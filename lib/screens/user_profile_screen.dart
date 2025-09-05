import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../services/follow_service.dart';
import '../services/block_service.dart';
import 'following_list_screen.dart';
import 'chat_screen.dart';

class UserProfileScreen extends StatefulWidget {
  final Map<String, dynamic> user;

  const UserProfileScreen({
    super.key,
    required this.user,
  });

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  bool _isFollowing = false;
  bool _isLoading = false;
  int _followerCount = 0;
  bool _isBlocked = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _followerCount = widget.user['follower_count'] ?? 0;
    _loadFollowStatus();
    _loadBlockStatus();
  }
  
  Future<void> _loadFollowStatus() async {
    final userId = widget.user['id'] as int;
    final isFollowing = await FollowService.instance.isFollowing(userId);
    final actualFollowerCount = await FollowService.instance.getUserFollowerCount(userId, widget.user['follower_count'] ?? 0);
    
    if (mounted) {
      setState(() {
        _isFollowing = isFollowing;
        _followerCount = actualFollowerCount;
      });
    }
  }

  bool get _isCurrentUser => widget.user['id'] == 1; // 假设ID为1的是当前用户
  
  Future<void> _loadBlockStatus() async {
    final userId = widget.user['id'] as int;
    final isBlocked = await BlockService.instance.isUserBlocked(userId);
    
    if (mounted) {
      setState(() {
        _isBlocked = isBlocked;
      });
    }
  }
  
  Future<void> _handleFollowToggle() async {
    if (_isLoading) return;
    
    setState(() {
      _isLoading = true;
    });
    
    final userId = widget.user['id'] as int;
    final success = await FollowService.instance.toggleFollow(userId);
    
    if (success && mounted) {
      final newFollowStatus = await FollowService.instance.isFollowing(userId);
      final newFollowerCount = await FollowService.instance.getUserFollowerCount(userId, widget.user['follower_count'] ?? 0);
      
      setState(() {
        _isFollowing = newFollowStatus;
        _followerCount = newFollowerCount;
        _isLoading = false;
      });
      
      // 显示反馈消息
      final message = _isFollowing ? 'Following ${widget.user['name']}' : 'Unfollowed ${widget.user['name']}';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 2),
          backgroundColor: _isFollowing ? AppTheme.primaryColor : Colors.grey[600],
        ),
      );
    } else {
      setState(() {
        _isLoading = false;
      });
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('操作失败，请重试'),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: _isBlocked ? _buildBlockedView() : CustomScrollView(
        slivers: [
          // Profile Header
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppTheme.primaryColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Background image
                  widget.user['background_image'] != null
                      ? Image.asset(
                          widget.user['background_image'],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
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
                            );
                          },
                        )
                      : Container(
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
                  
                  // Profile info
                  Positioned(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Profile Avatar
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 10,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: ClipOval(
                            child: widget.user['profile_image'] != null
                                ? Image.asset(
                                    widget.user['profile_image'],
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: AppTheme.primaryColor,
                                        child: const Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 50,
                                        ),
                                      );
                                    },
                                  )
                                : Container(
                                    color: AppTheme.primaryColor,
                                    child: const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ),
                          ),
                        ),
                        
                        const SizedBox(height: 16),
                        
                        // User Name
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.user['name'],
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            if (widget.user['verified'] == true) ...[
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.verified,
                                color: AppTheme.primaryColor,
                                size: 24,
                              ),
                            ],
                          ],
                        ),
                        
                        const SizedBox(height: 4),
                        
                        // Username
                        Text(
                          '@${widget.user['username']}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        
                        const SizedBox(height: 8),
                        
                        // Location
                        if (widget.user['location'] != null)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.white70,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                widget.user['location'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                onPressed: _showMoreOptions,
                icon: const Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
          ),
          
          // Profile Stats and Actions
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bio
                  if (widget.user['bio'] != null) ...[
                    Text(
                      widget.user['bio'],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                  ],
                  
                  // Motorcycle Info
                  if (widget.user['bike_model'] != null) ...[
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.motorcycle,
                            color: AppTheme.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              widget.user['bike_model'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  
                  // Stats
                  Row(
                    children: [
                      Expanded(
                        child: _buildStatItem(
                          'Posts',
                          '${widget.user['posts']?.length ?? 0}',
                        ),
                      ),
                      Expanded(
                        child: _buildStatItem(
                          'Followers',
                          _formatNumber(_followerCount),
                        ),
                      ),
                      Expanded(
                        child: _buildStatItem(
                          'Following',
                          _formatNumber(widget.user['following_count'] ?? 0),
                          onTap: _isCurrentUser ? () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const FollowingListScreen(),
                              ),
                            );
                          } : null,
                        ),
                      ),
                      Expanded(
                        child: _buildStatItem(
                          'Miles',
                          _formatNumber(widget.user['total_miles'] ?? 0),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Action Buttons
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _isLoading ? null : _handleFollowToggle,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _isFollowing 
                                ? Colors.grey[300] 
                                : AppTheme.primaryColor,
                            foregroundColor: _isFollowing 
                                ? Colors.black87 
                                : Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            disabledBackgroundColor: Colors.grey[400],
                          ),
                          child: _isLoading 
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                  ),
                                )
                              : Text(_isFollowing ? 'Following' : 'Follow'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(otherUser: widget.user),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppTheme.primaryColor,
                            side: const BorderSide(color: AppTheme.primaryColor),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: const Text('Message'),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Achievements/Badges
                  if (widget.user['achievements'] != null && 
                      (widget.user['achievements'] as List).isNotEmpty) ...[
                    Text(
                      'Achievements',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: (widget.user['achievements'] as List).map<Widget>((achievement) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppTheme.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: AppTheme.primaryColor.withOpacity(0.3),
                            ),
                          ),
                          child: Text(
                            achievement.toString(),
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ],
              ),
            ),
          ),
          
          // Tabs
          SliverPersistentHeader(
            pinned: true,
            delegate: _TabHeaderDelegate(
              child: Container(
                color: Colors.white,
                child: TabBar(
                  controller: _tabController,
                  labelColor: AppTheme.primaryColor,
                  unselectedLabelColor: Colors.grey[600],
                  indicatorColor: AppTheme.primaryColor,
                  indicatorWeight: 3,
                  tabs: const [
                    Tab(text: 'Posts'),
                    Tab(text: 'Rides'),
                    Tab(text: 'About'),
                  ],
                ),
              ),
            ),
          ),
          
          // Tab Content
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6, // 固定高度
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildPostsTab(),
                  _buildRidesTab(),
                  _buildAboutTab(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, {VoidCallback? onTap}) {
    final child = Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryColor,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: AppTheme.textSecondaryColor,
          ),
        ),
      ],
    );
    
    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: child,
      );
    }
    
    return child;
  }

  Widget _buildPostsTab() {
    final posts = widget.user['posts'] as List? ?? [];
    
    if (posts.isEmpty) {
      return const Center(
        child: Text(
          'No posts yet',
          style: TextStyle(
            fontSize: 16,
            color: AppTheme.textSecondaryColor,
          ),
        ),
      );
    }
    
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Post header with user info
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    // User avatar
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppTheme.primaryColor, width: 2),
                      ),
                      child: ClipOval(
                        child: widget.user['profile_image'] != null
                            ? Image.asset(
                                widget.user['profile_image'],
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: AppTheme.primaryColor,
                                    child: const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  );
                                },
                              )
                            : Container(
                                color: AppTheme.primaryColor,
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                      ),
                    ),
                    
                    const SizedBox(width: 12),
                    
                    // User name and timestamp
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.user['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              if (widget.user['verified'] == true) ...[
                                const SizedBox(width: 4),
                                const Icon(
                                  Icons.verified,
                                  color: AppTheme.primaryColor,
                                  size: 16,
                                ),
                              ],
                            ],
                          ),
                         
                        ],
                      ),
                    ),
                  
                  ],
                ),
              ),
              
              // Post content
              if (post['content'] != null && post['content'].toString().isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    post['content'],
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              
              // Post images
              if (post['images'] != null && (post['images'] as List).isNotEmpty)
                _buildPostImages(post['images'] as List),
              
              // Post videos (if any)
              if (post['videos'] != null && (post['videos'] as List).isNotEmpty)
                _buildPostVideos(post['videos'] as List),
              
              // Hashtags
              if (post['hashtags'] != null && (post['hashtags'] as List).isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: (post['hashtags'] as List).map<Widget>((hashtag) {
                      return Text(
                        hashtag.toString(),
                        style: const TextStyle(
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              
              // Action buttons
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    // Like button
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.grey[600],
                            ),
                            const SizedBox(width: 4),
                            Text(
                              _formatNumber(post['likes'] ?? 0),
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                  
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildRidesTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildRideStatCard(
            'Total Distance',
            '${_formatNumber(widget.user['total_miles'] ?? 0)} miles',
            Icons.straighten,
          ),
          const SizedBox(height: 12),
          _buildRideStatCard(
            'Riding Experience',
            widget.user['riding_experience'] ?? 'N/A',
            Icons.access_time,
          ),
          const SizedBox(height: 12),
          _buildRideStatCard(
            'Longest Ride',
            widget.user['longest_ride'] ?? 'N/A',
            Icons.trending_up,
          ),
        ],
      ),
    );
  }

  Widget _buildAboutTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoItem('Occupation', widget.user['occupation']),
          _buildInfoItem('Location', widget.user['location']),
          _buildInfoItem('Bike Model', widget.user['bike_model']),
          _buildInfoItem('Riding Experience', widget.user['riding_experience']),
          _buildInfoItem('Email', widget.user['contact']?['email']),
          _buildInfoItem('Instagram', widget.user['contact']?['instagram']),
        ],
      ),
    );
  }

  Widget _buildRideStatCard(String title, String value, IconData icon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppTheme.primaryColor,
              size: 24,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(String label, dynamic value) {
    if (value == null || value.toString().isEmpty) {
      return const SizedBox.shrink();
    }
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppTheme.textSecondaryColor,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value.toString(),
              style: const TextStyle(
                color: AppTheme.textPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostImages(List images) {
    if (images.isEmpty) return const SizedBox.shrink();
    
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: images.length == 1
          ? _buildSingleImage(images[0])
          : _buildMultipleImages(images),
    );
  }
  
  Widget _buildSingleImage(String imagePath) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxHeight: 400),
      child: ClipRRect(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              height: 200,
              color: Colors.grey[300],
              child: const Center(
                child: Icon(
                  Icons.image_not_supported,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
  
  Widget _buildMultipleImages(List images) {
    if (images.length == 2) {
      return Row(
        children: [
          Expanded(
            child: Container(
              height: 200,
              margin: const EdgeInsets.only(right: 2),
              child: ClipRRect(
                child: Image.asset(
                  images[0],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              margin: const EdgeInsets.only(left: 2),
              child: ClipRRect(
                child: Image.asset(
                  images[1],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      );
    }
    
    // For 3+ images, show grid layout
    return Container(
      height: 250,
      child: images.length == 3
          ? Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(right: 2),
                    child: ClipRRect(
                      child: Image.asset(
                        images[0],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: const Icon(Icons.image_not_supported),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 2, bottom: 2),
                          child: ClipRRect(
                            child: Image.asset(
                              images[1],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  child: const Icon(Icons.image_not_supported),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 2, top: 2),
                          child: ClipRRect(
                            child: Image.asset(
                              images[2],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  child: const Icon(Icons.image_not_supported),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: images.length > 4 ? 4 : images.length,
              itemBuilder: (context, index) {
                if (index == 3 && images.length > 4) {
                  // Show "+X more" overlay for the 4th image
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: const Icon(Icons.image_not_supported),
                            );
                          },
                        ),
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.6),
                        child: Center(
                          child: Text(
                            '+${images.length - 4}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
                
                return ClipRRect(
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: const Icon(Icons.image_not_supported),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
  
  Widget _buildPostVideos(List videos) {
    if (videos.isEmpty) return const SizedBox.shrink();
    
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: videos.map<Widget>((video) {
          return Container(
            width: double.infinity,
            height: 200,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Video thumbnail (you can implement video thumbnail loading here)
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.video_library,
                    color: Colors.white54,
                    size: 50,
                  ),
                ),
                
                // Play button
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                
                // Video duration (mock)
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      '1:23',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
  
  String _formatTimestamp(String timestamp) {
    try {
      final dateTime = DateTime.parse(timestamp);
      final now = DateTime.now();
      final difference = now.difference(dateTime);
      
      if (difference.inDays > 7) {
        return '${dateTime.month}/${dateTime.day}/${dateTime.year}';
      } else if (difference.inDays > 0) {
        return '${difference.inDays}d ago';
      } else if (difference.inHours > 0) {
        return '${difference.inHours}h ago';
      } else if (difference.inMinutes > 0) {
        return '${difference.inMinutes}m ago';
      } else {
        return 'Just now';
      }
    } catch (e) {
      return '';
    }
  }

  Future<void> _handleBlockUser() async {
    final userId = widget.user['id'] as int;
    final success = await BlockService.instance.blockUser(userId);
    
    if (success && mounted) {
      setState(() {
        _isBlocked = true;
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${widget.user['name']} has been blocked'),
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
      
      // 不退出页面，只隐藏内容
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to block user'),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
  
  Future<void> _handleUnblockUser() async {
    final userId = widget.user['id'] as int;
    final success = await BlockService.instance.unblockUser(userId);
    
    if (success && mounted) {
      setState(() {
        _isBlocked = false;
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${widget.user['name']} has been unblocked'),
          duration: const Duration(seconds: 2),
          backgroundColor: AppTheme.primaryColor,
        ),
      );
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to unblock user'),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
  
  void _showMoreOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Block/Unblock option - always show for non-current users
            ListTile(
              leading: Icon(
                _isBlocked ? Icons.block : Icons.block,
                color: _isBlocked ? Colors.green : Colors.red,
              ),
              title: Text(
                _isBlocked ? 'Unblock User' : 'Block User',
                style: TextStyle(
                  color: _isBlocked ? Colors.green : Colors.red,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                if (_isBlocked) {
                  _handleUnblockUser();
                } else {
                  _showBlockConfirmDialog();
                }
              },
            ),
            const Divider(),
            // Report option
            ListTile(
              leading: const Icon(Icons.report, color: Colors.orange),
              title: const Text('Report User', style: TextStyle(color: Colors.orange)),
              onTap: () {
                Navigator.of(context).pop();
                _showReportDialog();
              },
            ),
          ],
        ),
      ),
    );
  }
  
  void _showBlockConfirmDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Block User'),
        content: Text(
          'Are you sure you want to block ${widget.user['name']}? You won\'t be able to see their content or receive messages from them.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _handleBlockUser();
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Block'),
          ),
        ],
      ),
    );
  }
  
  void _showReportDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Report User'),
        content: const Text(
          'Are you sure you want to report this user? This action will be reviewed by our team.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('User reported successfully'),
                  backgroundColor: Colors.orange,
                ),
              );
            },
            style: TextButton.styleFrom(foregroundColor: Colors.orange),
            child: const Text('Report'),
          ),
        ],
      ),
    );
  }

  Widget _buildBlockedView() {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'User Profile',
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
          IconButton(
            onPressed: _showMoreOptions,
            icon: const Icon(Icons.more_vert, color: AppTheme.textPrimaryColor),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.block,
              size: 80,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'User Blocked',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'You have blocked this user.\nTheir content is hidden.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[500],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _handleUnblockUser,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: const Text('Unblock User'),
            ),
          ],
        ),
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

class _TabHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _TabHeaderDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
