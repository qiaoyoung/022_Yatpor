import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../theme/app_theme.dart';
import '../services/chat_service.dart';
import '../models/chat_message.dart';
import 'chat_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  List<ChatRoom> _chatRooms = [];
  List<Map<String, dynamic>> _allUsers = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadChatRooms();
  }

  Future<void> _loadChatRooms() async {
    try {
      // 加载用户数据
      final String response = await rootBundle.loadString('assets/post/motorcycle_users.json');
      final Map<String, dynamic> data = json.decode(response);
      _allUsers = List<Map<String, dynamic>>.from(data['users']);
      
      // 加载聊天室
      final chatRooms = await ChatService.instance.getChatRooms();
      
      if (mounted) {
        setState(() {
          _chatRooms = chatRooms;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Map<String, dynamic>? _getUserById(String userId) {
    try {
      final userIdInt = int.parse(userId);
      return _allUsers.firstWhere(
        (user) => user['id'] == userIdInt,
        orElse: () => <String, dynamic>{},
      );
    } catch (e) {
      return null;
    }
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);
    
    if (difference.inDays > 0) {
      return '${timestamp.month}/${timestamp.day}';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Messages',
          style: TextStyle(
            color: AppTheme.textPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      
        actions: [
          if (_chatRooms.isNotEmpty)
            IconButton(
              onPressed: _showClearAllDialog,
              icon: const Icon(
                Icons.delete_sweep,
                color: Colors.red,
              ),
            ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
              ),
            )
          : _chatRooms.isEmpty
              ? _buildEmptyState()
              : _buildChatList(),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 80,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'No Messages Yet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Start a conversation with other riders',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[500],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.primaryColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text('Explore Users'),
          ),
        ],
      ),
    );
  }

  Widget _buildChatList() {
    return ListView.builder(
      itemCount: _chatRooms.length,
      itemBuilder: (context, index) {
        final chatRoom = _chatRooms[index];
        final otherUserId = chatRoom.getOtherParticipantId('1');
        final otherUser = _getUserById(otherUserId);
        
        if (otherUser == null) {
          return const SizedBox.shrink();
        }
        
        return _buildChatItem(chatRoom, otherUser);
      },
    );
  }

  Widget _buildChatItem(ChatRoom chatRoom, Map<String, dynamic> user) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: GestureDetector(
          onTap: () => _navigateToChat(user),
          child: Stack(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppTheme.primaryColor, width: 2),
                ),
                child: ClipOval(
                  child: user['profile_image'] != null
                      ? Image.asset(
                          user['profile_image'],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: AppTheme.primaryColor,
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 28,
                              ),
                            );
                          },
                        )
                      : Container(
                          color: AppTheme.primaryColor,
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                ),
              ),
              if (chatRoom.unreadCount > 0)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    child: Text(
                      chatRoom.unreadCount > 99 ? '99+' : chatRoom.unreadCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
        title: GestureDetector(
          onTap: () => _navigateToChat(user),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  user['name'] ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              
            ],
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              chatRoom.lastMessage,
              style: TextStyle(
                color: chatRoom.unreadCount > 0 ? Colors.black87 : Colors.grey[600],
                fontSize: 14,
                fontWeight: chatRoom.unreadCount > 0 ? FontWeight.w500 : FontWeight.normal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 12,
                  color: Colors.grey[500],
                ),
                const SizedBox(width: 4),
                Text(
                  _formatTimestamp(chatRoom.lastMessageTime),
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
                if (chatRoom.unreadCount > 0) ...[
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '${chatRoom.unreadCount} new',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
        trailing: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'delete') {
              _showDeleteDialog(user);
            }
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'delete',
              child: Row(
                children: [
                  Icon(Icons.delete, color: Colors.red),
                  SizedBox(width: 8),
                  Text('Delete Chat', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToChat(Map<String, dynamic> user) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatScreen(otherUser: user),
      ),
    );
  }

  void _showDeleteDialog(Map<String, dynamic> user) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Chat'),
          content: Text(
            'Are you sure you want to delete the chat with ${user['name']}? This action cannot be undone.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await ChatService.instance.deleteChat('1', user['id'].toString());
                _loadChatRooms(); // 重新加载列表
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _showClearAllDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Clear All Chats'),
          content: const Text(
            'Are you sure you want to delete all chats? This action cannot be undone.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await ChatService.instance.clearAllChats();
                _loadChatRooms(); // 重新加载列表
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text('Clear All'),
            ),
          ],
        );
      },
    );
  }
}
