import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/motorcycle_user_post.dart';
import '../services/motorcycle_data_service.dart';
import '../widgets/motorcycle_post_card.dart';
import 'user_profile_screen.dart';
import 'post_detail_screen.dart';

class Tab2Screen extends StatefulWidget {
  const Tab2Screen({super.key});

  @override
  State<Tab2Screen> createState() => _Tab2ScreenState();
}

class _Tab2ScreenState extends State<Tab2Screen> {
  final MotorcycleDataService _dataService = MotorcycleDataService();
  List<MotorcycleUserPost> _posts = [];
  List<MotorcycleUser> _users = [];
  bool _isLoading = true;
  String _selectedFilter = 'all';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    await _dataService.loadData();
    
    if (mounted) {
      setState(() {
        _posts = _dataService.allPosts;
        _users = _dataService.users;
        _isLoading = false;
      });
    }
  }

  void _filterPosts(String filter) {
    setState(() {
      _selectedFilter = filter;
      switch (filter) {
        case 'all':
          _posts = _dataService.allPosts;
          break;
        case 'trending':
          _posts = _dataService.getTopPostsByLikes(limit: 50);
          break;
        case 'harley':
          _posts = _dataService.getPostsByBikeModel('Harley');
          break;
        case 'ducati':
          _posts = _dataService.getPostsByBikeModel('Ducati');
          break;
        case 'bmw':
          _posts = _dataService.getPostsByBikeModel('BMW');
          break;
        case 'yamaha':
          _posts = _dataService.getPostsByBikeModel('Yamaha');
          break;
        case 'ktm':
          _posts = _dataService.getPostsByBikeModel('KTM');
          break;
        case 'triumph':
          _posts = _dataService.getPostsByBikeModel('Triumph');
          break;
        case 'honda':
          _posts = _dataService.getPostsByBikeModel('Honda');
          break;
        case 'suzuki':
          _posts = _dataService.getPostsByBikeModel('Suzuki');
          break;
        case 'zero':
          _posts = _dataService.getPostsByBikeModel('Zero');
          break;
        case 'indian':
          _posts = _dataService.getPostsByBikeModel('Indian');
          break;
        case 'kawasaki':
          _posts = _dataService.getPostsByBikeModel('Kawasaki');
          break;
      }
    });
  }

  void _searchPosts(String query) {
    setState(() {
      if (query.isEmpty) {
        _filterPosts(_selectedFilter);
      } else {
        _posts = _dataService.searchPosts(query);
      }
    });
  }

  MotorcycleUser? _getUserForPost(MotorcycleUserPost post) {
    return _users.firstWhere(
      (user) => user.posts.contains(post),
      orElse: () => _users.first,
    );
  }

  void _onUserTap(MotorcycleUser user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserProfileScreen(user: user.toJson()),
      ),
    );
  }

  void _onPostTap(MotorcycleUserPost post) {
    final user = _getUserForPost(post);
    if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PostDetailScreen(
            user: user,
            post: post,
          ),
        ),
      );
    }
  }

  void _onLike(MotorcycleUserPost post) {
    // 点赞功能现在由 MotorcyclePostCard 组件内部处理
    // 这里可以添加额外的逻辑，比如更新列表状态等
  }

  void _onComment(MotorcycleUserPost post) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Comment on post: ${post.id}'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void _onShare(MotorcycleUserPost post) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Shared post: ${post.id}'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Motorcycle Feed',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              _showSearchDialog();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Filter chips
          _buildFilterChips(),
          
          // Posts list
          Expanded(
            child: _isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppTheme.primaryColor,
                    ),
                  )
                : _posts.isEmpty
                    ? _buildEmptyState()
                    : RefreshIndicator(
                        onRefresh: _loadData,
                        color: AppTheme.primaryColor,
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          itemCount: _posts.length,
                          itemBuilder: (context, index) {
                            final post = _posts[index];
                            final user = _getUserForPost(post);
                            
                            if (user == null) return const SizedBox.shrink();
                            
                            return MotorcyclePostCard(
                              user: user,
                              post: post,
                              onTap: () => _onPostTap(post),
                              onLike: () => _onLike(post),
                              onComment: () => _onComment(post),
                              onShare: () => _onShare(post),
                              onUserTap: () => _onUserTap(user),
                            );
                          },
                        ),
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChips() {
    final filters = [
      {'key': 'all', 'label': 'All'},
      {'key': 'trending', 'label': 'Trending'},
      {'key': 'harley', 'label': 'Harley'},
      {'key': 'ducati', 'label': 'Ducati'},
      {'key': 'bmw', 'label': 'BMW'},
      {'key': 'yamaha', 'label': 'Yamaha'},
      {'key': 'ktm', 'label': 'KTM'},
      {'key': 'triumph', 'label': 'Triumph'},
      {'key': 'honda', 'label': 'Honda'},
      {'key': 'suzuki', 'label': 'Suzuki'},
      {'key': 'zero', 'label': 'Zero'},
      {'key': 'indian', 'label': 'Indian'},
      {'key': 'kawasaki', 'label': 'Kawasaki'},
    ];

    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final filter = filters[index];
          final isSelected = _selectedFilter == filter['key'];
          
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: Text(
                filter['label']!,
                style: TextStyle(
                  color: isSelected ? Colors.white : AppTheme.textPrimaryColor,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
              selected: isSelected,
              onSelected: (selected) {
                if (selected) {
                  _filterPosts(filter['key']!);
                }
              },
              backgroundColor: Colors.grey[200],
              selectedColor: AppTheme.primaryColor,
              checkmarkColor: Colors.white,
              side: BorderSide(
                color: isSelected ? AppTheme.primaryColor : Colors.grey[300]!,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.motorcycle,
            size: 80,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'No Posts Found',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Try selecting different filters',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }

  void _showSearchDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Search Posts'),
        content: TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Enter keywords to search...',
            border: OutlineInputBorder(),
          ),
          onChanged: _searchPosts,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _searchPosts('');
            },
            child: const Text('Clear'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
