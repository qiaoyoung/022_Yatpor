import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:math' as math;
import '../theme/app_theme.dart';
import '../services/block_service.dart';
import 'user_profile_screen.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  List<dynamic> users = [];
  List<dynamic> filteredUsers = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  Future<void> loadUsers() async {
    try {
      final String response = await rootBundle.loadString('assets/post/motorcycle_users.json');
      final data = json.decode(response);
      final allUsers = data['users'];
      
      // 过滤掉被拉黑的用户
      final blockedUsers = await BlockService.instance.getBlockedUserIds();
      final filtered = allUsers.where((user) => !blockedUsers.contains(user['id'])).toList();
      
      setState(() {
        users = allUsers;
        filteredUsers = filtered;
        isLoading = false;
      });
    } catch (e) {
      print('Error loading users: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: const Center(
          child: CircularProgressIndicator(
            color: AppTheme.primaryColor,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Top user list (horizontal scroll)
            Container(
              height: 100,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: filteredUsers.length,
                itemBuilder: (context, index) {
                  final user = filteredUsers[index];
                  return _buildUserAvatar(user, index);
                },
              ),
            ),
            
            // Divider
            Container(
              height: 8,
              color: Colors.grey[100],
            ),
            
            // Bottom cards (waterfall layout)
            Expanded(
              child: _buildWaterfallLayout(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserAvatar(dynamic user, int index) {
    final isOnline = index % 3 == 0; // Simulate online status
    final hasStory = index % 2 == 0; // Simulate story status
    
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => UserProfileScreen(user: user),
          ),
        );
      },
      child: Container(
        width: 70,
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Story ring
              if (hasStory)
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFF6B6B),
                        Color(0xFFFFE66D),
                        Color(0xFF4ECDC4),
                        Color(0xFF45B7D1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              
              // Profile image
              Container(
                width: 56,
                height: 56,
                margin: EdgeInsets.all(hasStory ? 2 : 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.primaryColor.withOpacity(0.2),
                ),
                child: ClipOval(
                  child: user['profile_image'] != null
                      ? Image.asset(
                          user['profile_image'],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: AppTheme.primaryColor.withOpacity(0.3),
                              child: Icon(
                                Icons.person,
                                color: AppTheme.primaryColor,
                                size: 28,
                              ),
                            );
                          },
                        )
                      : Container(
                          color: AppTheme.primaryColor.withOpacity(0.3),
                          child: Icon(
                            Icons.person,
                            color: AppTheme.primaryColor,
                            size: 28,
                          ),
                        ),
                ),
              ),
              
              // Online indicator
              if (isOnline)
                Positioned(
                  right: hasStory ? 2 : 0,
                  bottom: hasStory ? 2 : 0,
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),
          
          const SizedBox(height: 6),
          
          // Username
          Flexible(
            child: Text(
              user['name'].split(' ')[0], // First name only
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: AppTheme.textPrimaryColor,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      ),
    );
  }

  Widget _buildWaterfallLayout() {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index >= filteredUsers.length) return null;
                final user = filteredUsers[index];
                return _buildUserCard(user, index);
              },
              childCount: filteredUsers.length,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUserCard(dynamic user, int index) {
    final post = user['posts'][0]; // Get first post
    final cardHeight = 200.0 + (math.Random(index).nextDouble() * 100); // Random height for waterfall effect
    
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => UserProfileScreen(user: user),
          ),
        );
      },
      child: Container(
        height: cardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            post['images'] != null && post['images'].isNotEmpty
                ? Image.asset(
                    post['images'][0],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppTheme.primaryColor.withOpacity(0.8),
                              AppTheme.primaryColor.withOpacity(0.6),
                            ],
                          ),
                        ),
                        child: const Icon(
                          Icons.motorcycle,
                          size: 48,
                          color: Colors.white,
                        ),
                      );
                    },
                  )
                : Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppTheme.primaryColor.withOpacity(0.8),
                          AppTheme.primaryColor.withOpacity(0.6),
                        ],
                      ),
                    ),
                    child: const Icon(
                      Icons.motorcycle,
                      size: 48,
                      color: Colors.white,
                    ),
                  ),
            
            // Gradient overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),
            
            // User info overlay
            Positioned(
              left: 12,
              right: 12,
              bottom: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // User avatar and name
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1.5),
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
                                        size: 14,
                                      ),
                                    );
                                  },
                                )
                              : Container(
                                  color: AppTheme.primaryColor,
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          user['username'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Post title - single line only
                  Text(
                    _extractTitle(post['content']),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }

  String _extractTitle(String content) {
    // Extract first sentence or first 30 characters as title for single line
    final sentences = content.split('!');
    if (sentences.isNotEmpty && sentences[0].length > 10 && sentences[0].length <= 35) {
      return sentences[0].trim() + '!';
    }
    
    // For single line display, limit to 30 characters
    if (content.length > 30) {
      return content.substring(0, 30) + '...';
    }
    
    return content;
  }
}
