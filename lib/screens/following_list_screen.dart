import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../theme/app_theme.dart';
import '../services/follow_service.dart';
import 'user_profile_screen.dart';

class FollowingListScreen extends StatefulWidget {
  const FollowingListScreen({super.key});

  @override
  State<FollowingListScreen> createState() => _FollowingListScreenState();
}

class _FollowingListScreenState extends State<FollowingListScreen> {
  List<Map<String, dynamic>> _followingUsers = [];
  bool _isLoading = true;
  List<Map<String, dynamic>> _allUsers = [];

  @override
  void initState() {
    super.initState();
    _loadFollowingUsers();
  }

  Future<void> _loadFollowingUsers() async {
    try {
      // 首先加载所有用户数据
      final String response = await rootBundle.loadString('assets/post/motorcycle_users.json');
      final Map<String, dynamic> data = json.decode(response);
      _allUsers = List<Map<String, dynamic>>.from(data['users']);
      
      // 获取关注的用户ID列表
      final followingIds = await FollowService.instance.getFollowingUserIds();
      
      // 筛选出关注的用户
      final followingUsers = <Map<String, dynamic>>[];
      for (int userId in followingIds) {
        final user = _allUsers.firstWhere(
          (user) => user['id'] == userId,
          orElse: () => <String, dynamic>{},
        );
        if (user.isNotEmpty) {
          followingUsers.add(user);
        }
      }
      
      if (mounted) {
        setState(() {
          _followingUsers = followingUsers;
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

  Future<void> _handleUnfollow(Map<String, dynamic> user) async {
    final userId = user['id'] as int;
    final success = await FollowService.instance.unfollowUser(userId);
    
    if (success && mounted) {
      setState(() {
        _followingUsers.removeWhere((u) => u['id'] == userId);
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Unfollowed ${user['name']}'),
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.grey[600],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Following',
          style: TextStyle(
            color: AppTheme.textPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppTheme.textPrimaryColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          TextButton(
            onPressed: _followingUsers.isEmpty ? null : () => _showClearAllDialog(),
            child: Text(
              'Clear All',
              style: TextStyle(
                color: _followingUsers.isEmpty ? Colors.grey : Colors.red,
                fontWeight: FontWeight.w600,
              ),
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
          : _followingUsers.isEmpty
              ? _buildEmptyState()
              : _buildFollowingList(),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people_outline,
            size: 80,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'No Following Yet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Start following users to see them here',
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

  Widget _buildFollowingList() {
    return Column(
      children: [
        // 统计信息
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Text(
            'Following ${_followingUsers.length} ${_followingUsers.length == 1 ? 'person' : 'people'}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        
        // 关注列表
        Expanded(
          child: ListView.builder(
            itemCount: _followingUsers.length,
            itemBuilder: (context, index) {
              final user = _followingUsers[index];
              return _buildUserItem(user);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildUserItem(Map<String, dynamic> user) {
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
          onTap: () => _navigateToProfile(user),
          child: Container(
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
        ),
        title: GestureDetector(
          onTap: () => _navigateToProfile(user),
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
              if (user['verified'] == true) ...[
                const SizedBox(width: 4),
                const Icon(
                  Icons.verified,
                  color: AppTheme.primaryColor,
                  size: 18,
                ),
              ],
            ],
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '@${user['username'] ?? ''}',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
            if (user['bio'] != null && user['bio'].toString().isNotEmpty)
              Text(
                user['bio'],
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.people,
                  size: 16,
                  color: Colors.grey[500],
                ),
                const SizedBox(width: 4),
                Text(
                  '${_formatNumber(user['follower_count'] ?? 0)} followers',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
                const SizedBox(width: 16),
                if (user['bike_model'] != null) ...[
                  Icon(
                    Icons.motorcycle,
                    size: 16,
                    color: Colors.grey[500],
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      user['bike_model'],
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
        trailing: OutlinedButton(
          onPressed: () => _handleUnfollow(user),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
            side: const BorderSide(color: Colors.red),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            minimumSize: const Size(80, 32),
          ),
          child: const Text(
            'Unfollow',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }

  void _navigateToProfile(Map<String, dynamic> user) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => UserProfileScreen(user: user),
      ),
    );
  }

  void _showClearAllDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Clear All Following'),
          content: const Text(
            'Are you sure you want to unfollow all users? This action cannot be undone.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await _clearAllFollowing();
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text('Clear All'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _clearAllFollowing() async {
    // 逐个取消关注以更新粉丝数
    for (final user in _followingUsers) {
      await FollowService.instance.unfollowUser(user['id'] as int);
    }
    
    setState(() {
      _followingUsers.clear();
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Unfollowed all users'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.grey,
      ),
    );
  }

  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }
}
