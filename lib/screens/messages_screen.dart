import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  int _selectedTabIndex = 0;
  final List<String> _tabs = ['Messages', 'Notifications'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            expandedHeight: 120,
            floating: false,
            pinned: true,
            backgroundColor: AppTheme.primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Messages',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppTheme.primaryColor,
                      AppTheme.primaryLightColor,
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
          ),
          
          // Tab Header
          SliverPersistentHeader(
            pinned: true,
            delegate: _TabHeaderDelegate(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: _tabs.asMap().entries.map((entry) {
                          final index = entry.key;
                          final tab = entry.value;
                          return Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTabIndex = index;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: _selectedTabIndex == index
                                          ? AppTheme.primaryColor
                                          : Colors.transparent,
                                      width: 3,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    tab,
                                    style: TextStyle(
                                      color: _selectedTabIndex == index
                                          ? AppTheme.primaryColor
                                          : Colors.grey[600],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const Divider(height: 1),
                  ],
                ),
              ),
            ),
          ),
          
          // Content
          SliverToBoxAdapter(
            child: _selectedTabIndex == 0 ? _buildMessagesTab() : _buildNotificationsTab(),
          ),
        ],
      ),
    );
  }

  Widget _buildMessagesTab() {
    return Column(
      children: [
        // Quick Actions
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.group_add),
                  label: const Text('New Group'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.person_add),
                  label: const Text('New Chat'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppTheme.primaryColor,
                    side: const BorderSide(color: AppTheme.primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
        
        // Messages List
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _getMessages().length,
          itemBuilder: (context, index) {
            final message = _getMessages()[index];
            return Container(
              color: Colors.white,
              child: ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(message['avatar']),
                    ),
                    if (message['isOnline'])
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: AppTheme.successColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                  ],
                ),
                title: Row(
                  children: [
                    Text(
                      message['name'],
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    if (message['isVerified']) ...[
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.verified,
                        size: 16,
                        color: AppTheme.primaryColor,
                      ),
                    ],
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message['lastMessage'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: message['isUnread'] 
                            ? AppTheme.textPrimaryColor 
                            : AppTheme.textSecondaryColor,
                        fontWeight: message['isUnread'] 
                            ? FontWeight.w600 
                            : FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          message['type'] == 'text' 
                              ? Icons.message 
                              : message['type'] == 'image' 
                                  ? Icons.image 
                                  : Icons.location_on,
                          size: 12,
                          color: AppTheme.textLightColor,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          message['time'],
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppTheme.textLightColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (message['isUnread'])
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '${message['unreadCount']}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    if (!message['isUnread'])
                      Icon(
                        message['isPinned'] ? Icons.push_pin : Icons.more_vert,
                        color: AppTheme.textLightColor,
                        size: 16,
                      ),
                  ],
                ),
                onTap: () {
                  // Navigate to chat
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildNotificationsTab() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _getNotifications().length,
      itemBuilder: (context, index) {
        final notification = _getNotifications()[index];
        return Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 1),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: _getNotificationColor(notification['type']).withOpacity(0.1),
              child: Icon(
                _getNotificationIcon(notification['type']),
                color: _getNotificationColor(notification['type']),
                size: 20,
              ),
            ),
            title: Text(
              notification['title'],
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notification['message']),
                const SizedBox(height: 4),
                Text(
                  notification['time'],
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppTheme.textLightColor,
                  ),
                ),
              ],
            ),
            trailing: notification['isUnread']
                ? Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppTheme.primaryColor,
                      shape: BoxShape.circle,
                    ),
                  )
                : null,
            onTap: () {
              // Handle notification tap
            },
          ),
        );
      },
    );
  }

  Color _getNotificationColor(String type) {
    switch (type) {
      case 'like':
        return Colors.red;
      case 'comment':
        return Colors.blue;
      case 'follow':
        return Colors.green;
      case 'event':
        return AppTheme.primaryColor;
      default:
        return Colors.grey;
    }
  }

  IconData _getNotificationIcon(String type) {
    switch (type) {
      case 'like':
        return Icons.favorite;
      case 'comment':
        return Icons.comment;
      case 'follow':
        return Icons.person_add;
      case 'event':
        return Icons.event;
      default:
        return Icons.notifications;
    }
  }

  List<Map<String, dynamic>> _getMessages() {
    return [
      {
        'name': 'Sarah Chen',
        'avatar': 'https://images.unsplash.com/photo-1494790108755-2616b612b786?w=150',
        'lastMessage': 'Great ride today! The weather was perfect.',
        'time': '2m ago',
        'type': 'text',
        'isUnread': true,
        'unreadCount': 3,
        'isOnline': true,
        'isVerified': false,
        'isPinned': false,
      },
      {
        'name': 'Mike Rodriguez',
        'avatar': 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150',
        'lastMessage': 'Check out this amazing route I found!',
        'time': '15m ago',
        'type': 'image',
        'isUnread': true,
        'unreadCount': 1,
        'isOnline': false,
        'isVerified': true,
        'isPinned': true,
      },
      {
        'name': 'Adventure Riders Club',
        'avatar': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=150',
        'lastMessage': 'Next group ride this weekend!',
        'time': '1h ago',
        'type': 'text',
        'isUnread': false,
        'unreadCount': 0,
        'isOnline': false,
        'isVerified': true,
        'isPinned': false,
      },
      {
        'name': 'John Smith',
        'avatar': 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150',
        'lastMessage': 'Meet you at the coffee shop?',
        'time': '2h ago',
        'type': 'text',
        'isUnread': false,
        'unreadCount': 0,
        'isOnline': true,
        'isVerified': false,
        'isPinned': false,
      },
      {
        'name': 'Emma Wilson',
        'avatar': 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=150',
        'lastMessage': 'Thanks for the route recommendation!',
        'time': '3h ago',
        'type': 'text',
        'isUnread': false,
        'unreadCount': 0,
        'isOnline': false,
        'isVerified': false,
        'isPinned': false,
      },
      {
        'name': 'David Brown',
        'avatar': 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150',
        'lastMessage': 'Location shared',
        'time': '5h ago',
        'type': 'location',
        'isUnread': false,
        'unreadCount': 0,
        'isOnline': false,
        'isVerified': true,
        'isPinned': false,
      },
    ];
  }

  List<Map<String, dynamic>> _getNotifications() {
    return [
      {
        'type': 'like',
        'title': 'Sarah Chen liked your post',
        'message': 'Sarah liked your "Epic Mountain Pass Adventure" post',
        'time': '2 minutes ago',
        'isUnread': true,
      },
      {
        'type': 'comment',
        'title': 'New comment on your post',
        'message': 'Mike Rodriguez: "Amazing photos! Where is this?"',
        'time': '15 minutes ago',
        'isUnread': true,
      },
      {
        'type': 'follow',
        'title': 'New follower',
        'message': 'Emma Wilson started following you',
        'time': '1 hour ago',
        'isUnread': true,
      },
      {
        'type': 'event',
        'title': 'Event reminder',
        'message': 'Motorcycle Rally 2024 starts in 2 days',
        'time': '3 hours ago',
        'isUnread': false,
      },
      {
        'type': 'like',
        'title': 'Multiple likes on your post',
        'message': 'You received 12 likes on your latest post',
        'time': '5 hours ago',
        'isUnread': false,
      },
      {
        'type': 'comment',
        'title': 'Group activity',
        'message': 'Adventure Riders Club: New ride planned for this weekend',
        'time': '1 day ago',
        'isUnread': false,
      },
      {
        'type': 'follow',
        'title': 'New follower',
        'message': 'David Brown started following you',
        'time': '2 days ago',
        'isUnread': false,
      },
      {
        'type': 'event',
        'title': 'Event update',
        'message': 'Coastal Cruise Meetup location changed',
        'time': '3 days ago',
        'isUnread': false,
      },
    ];
  }
}

class _TabHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _TabHeaderDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 51;

  @override
  double get minExtent => 51;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
