import 'package:flutter/material.dart';
import '../models/motorcycle_user_post.dart';
import '../models/motorcycle_user_post.dart' as models;
import '../theme/app_theme.dart';
import '../screens/image_preview_screen.dart';
import '../services/like_service.dart';

class MotorcyclePostCard extends StatefulWidget {
  final models.MotorcycleUser user;
  final MotorcycleUserPost post;
  final VoidCallback? onTap;
  final VoidCallback? onLike;
  final VoidCallback? onComment;
  final VoidCallback? onShare;
  final VoidCallback? onUserTap;

  const MotorcyclePostCard({
    super.key,
    required this.user,
    required this.post,
    this.onTap,
    this.onLike,
    this.onComment,
    this.onShare,
    this.onUserTap,
  });

  @override
  State<MotorcyclePostCard> createState() => _MotorcyclePostCardState();
}

class _MotorcyclePostCardState extends State<MotorcyclePostCard> {
  final LikeService _likeService = LikeService();
  bool _isLiked = false;
  int _likesCount = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadLikeState();
  }

  Future<void> _loadLikeState() async {
    // 初始化点赞数量
    await _likeService.initializePostLikes(widget.post.id, widget.post.likes);
    
    // 加载点赞状态和数量
    final isLiked = await _likeService.isPostLiked(widget.post.id);
    final likesCount = await _likeService.getPostLikesCount(widget.post.id);
    
    if (mounted) {
      setState(() {
        _isLiked = isLiked;
        _likesCount = likesCount;
      });
    }
  }

  Future<void> _handleLike() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final newLikeState = await _likeService.toggleLike(widget.post.id);
      
      // 更新点赞数量
      int newLikesCount;
      if (newLikeState) {
        newLikesCount = _likesCount + 1;
      } else {
        newLikesCount = _likesCount - 1;
      }
      
      await _likeService.updatePostLikesCount(widget.post.id, newLikesCount);
      
      if (mounted) {
        setState(() {
          _isLiked = newLikeState;
          _likesCount = newLikesCount;
          _isLoading = false;
        });
      }

      // 调用父组件的回调
      widget.onLike?.call();
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
      print('Error handling like: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with user info
            _buildHeader(),
            
            // Preview content (shortened)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                _getPreviewContent(),
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.4,
                  color: AppTheme.textPrimaryColor,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            
            // Media preview
            if (widget.post.images.isNotEmpty || widget.post.video != null) 
              _buildMediaPreview(context),
            
            // Action buttons
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Avatar
          GestureDetector(
            onTap: widget.onUserTap,
            child: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(widget.user.profileImage),
            ),
          ),
          
          const SizedBox(width: 12),
          
          // User info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.user.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimaryColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (widget.user.verified) ...[
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.verified,
                        size: 16,
                        color: AppTheme.primaryColor,
                      ),
                    ],
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        '@${widget.user.username}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppTheme.textSecondaryColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        widget.user.location,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppTheme.textSecondaryColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    
                  ],
                ),
                const SizedBox(height: 4),
                Flexible(
                  child: Text(
                    '${widget.user.bikeModel} • ${widget.user.ridingExperience}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondaryColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }

  String _getPreviewContent() {
    // Show only first 100 characters with ellipsis
    if (widget.post.content.length > 100) {
      return '${widget.post.content.substring(0, 100)}...';
    }
    return widget.post.content;
  }

  Widget _buildMediaPreview(BuildContext context) {
    if (widget.post.video != null) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black,
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.post.images.isNotEmpty ? widget.post.images.first : 'assets/images/placeholder.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (widget.post.images.isNotEmpty) {
      if (widget.post.images.length == 1) {
        return AspectRatio(
          aspectRatio: 16 / 9,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImagePreviewScreen(
                    images: widget.post.images,
                    initialIndex: 0,
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.post.images.first,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        );
      } else if (widget.post.images.length > 1) {
        return SizedBox(
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: widget.post.images.length > 4 ? 4 : widget.post.images.length,
              itemBuilder: (context, index) {
                if (index == 3 && widget.post.images.length > 4) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImagePreviewScreen(
                            images: widget.post.images,
                            initialIndex: index,
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          widget.post.images[index],
                          fit: BoxFit.cover,
                        ),
                        Container(
                          color: Colors.black54,
                          child: Center(
                            child: Text(
                              '+${widget.post.images.length - 4}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagePreviewScreen(
                          images: widget.post.images,
                          initialIndex: index,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    widget.post.images[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        );
      }
    }
    return const SizedBox.shrink();
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          _buildActionButton(
            icon: _isLiked ? Icons.favorite : Icons.favorite_border,
            label: _formatNumber(_likesCount),
            color: _isLiked ? Colors.red : null,
            onTap: _isLoading ? null : _handleLike,
          ),
        
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    Color? color,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: color ?? Colors.grey[600],
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: color ?? Colors.grey[600],
              ),
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
    } else {
      return number.toString();
    }
  }
}
