import 'package:flutter/material.dart';
import '../models/ride_post.dart';
import '../theme/app_theme.dart';

class RidePostCard extends StatelessWidget {
  final RidePost post;
  final VoidCallback? onTap;
  final VoidCallback? onLike;
  final VoidCallback? onComment;
  final VoidCallback? onShare;
  final VoidCallback? onBookmark;

  const RidePostCard({
    super.key,
    required this.post,
    this.onTap,
    this.onLike,
    this.onComment,
    this.onShare,
    this.onBookmark,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with user info
            _buildHeader(),
            
            // Images
            if (post.imageUrls.isNotEmpty) _buildImages(),
            
            // Content
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    post.title,
                    style: AppTheme.motorcycleTitleStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Description
                  Text(
                    post.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  const SizedBox(height: 12),
                  
                  // Ride stats
                  if (post.distance != null || post.duration != null || post.averageSpeed != null)
                    _buildRideStats(),
                  
                  const SizedBox(height: 12),
                  
                  // Tags
                  if (post.tags.isNotEmpty) _buildTags(),
                  
                  const SizedBox(height: 12),
                  
                  // Action buttons
                  _buildActionButtons(),
                ],
              ),
            ),
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
          CircleAvatar(
            radius: 20,
            backgroundImage: post.author.avatarUrl != null
                ? NetworkImage(post.author.avatarUrl!)
                : null,
            child: post.author.avatarUrl == null
                ? Text(
                    post.author.displayName[0].toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                : null,
          ),
          
          const SizedBox(width: 12),
          
          // User info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      post.author.displayName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (post.author.isVerified) ...[
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.verified,
                        size: 16,
                        color: AppTheme.primaryColor,
                      ),
                    ],
                  ],
                ),
                Row(
                  children: [
                    if (post.location != null) ...[
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        post.location!,
                        style: AppTheme.locationStyle,
                      ),
                      const SizedBox(width: 8),
                    ],
                    Text(
                      _formatTimeAgo(post.createdAt),
                      style: AppTheme.timeStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          // More options
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
            color: Colors.grey[600],
          ),
        ],
      ),
    );
  }

  Widget _buildImages() {
    if (post.imageUrls.length == 1) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: Image.network(
            post.imageUrls.first,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[200],
                child: const Icon(
                  Icons.image,
                  size: 48,
                  color: Colors.grey,
                ),
              );
            },
          ),
        ),
      );
    } else if (post.imageUrls.length > 1) {
      return SizedBox(
        height: 200,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemCount: post.imageUrls.length > 4 ? 4 : post.imageUrls.length,
            itemBuilder: (context, index) {
              if (index == 3 && post.imageUrls.length > 4) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      post.imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black54,
                      child: Center(
                        child: Text(
                          '+${post.imageUrls.length - 4}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
              return Image.network(
                post.imageUrls[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildRideStats() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          if (post.distance != null) ...[
            _buildStatItem(
              Icons.straighten,
              '${post.distance!.toStringAsFixed(1)} km',
              'Distance',
            ),
            const SizedBox(width: 16),
          ],
          if (post.duration != null) ...[
            _buildStatItem(
              Icons.access_time,
              _formatDuration(post.duration!),
              'Duration',
            ),
            const SizedBox(width: 16),
          ],
          if (post.averageSpeed != null) ...[
            _buildStatItem(
              Icons.speed,
              '${post.averageSpeed!.toStringAsFixed(1)} km/h',
              'Avg Speed',
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStatItem(IconData icon, String value, String label) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            color: AppTheme.primaryColor,
            size: 20,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTheme.rideStatsStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              color: AppTheme.textSecondaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildTags() {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: post.tags.map((tag) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppTheme.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '#$tag',
            style: TextStyle(
              fontSize: 12,
              color: AppTheme.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        _buildActionButton(
          icon: post.isLiked ? Icons.favorite : Icons.favorite_border,
          label: '${post.likesCount}',
          color: post.isLiked ? Colors.red : null,
          onTap: onLike,
        ),
        const SizedBox(width: 16),
        _buildActionButton(
          icon: Icons.comment_outlined,
          label: '${post.commentsCount}',
          onTap: onComment,
        ),
        const SizedBox(width: 16),
        _buildActionButton(
          icon: Icons.share_outlined,
          label: '${post.sharesCount}',
          onTap: onShare,
        ),
        const Spacer(),
        _buildActionButton(
          icon: post.isBookmarked ? Icons.bookmark : Icons.bookmark_border,
          label: '',
          onTap: onBookmark,
        ),
      ],
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
            if (label.isNotEmpty) ...[
              const SizedBox(width: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: color ?? Colors.grey[600],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _formatTimeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  String _formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    
    if (hours > 0) {
      return '${hours}h ${mins}m';
    } else {
      return '${mins}m';
    }
  }
}
