import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LikeService {
  static final LikeService _instance = LikeService._internal();
  factory LikeService() => _instance;
  LikeService._internal();

  static const String _likedPostsKey = 'liked_posts';
  static const String _postLikesKey = 'post_likes';

  // 获取用户点赞的帖子ID列表
  Future<Set<int>> getLikedPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsJson = prefs.getString(_likedPostsKey);
      if (likedPostsJson != null) {
        final List<dynamic> likedPostsList = json.decode(likedPostsJson);
        return likedPostsList.map((id) => id as int).toSet();
      }
    } catch (e) {
      print('Error loading liked posts: $e');
    }
    return <int>{};
  }

  // 检查帖子是否被点赞
  Future<bool> isPostLiked(int postId) async {
    final likedPosts = await getLikedPosts();
    return likedPosts.contains(postId);
  }

  // 切换帖子点赞状态
  Future<bool> toggleLike(int postId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPosts = await getLikedPosts();
      
      bool isLiked;
      if (likedPosts.contains(postId)) {
        likedPosts.remove(postId);
        isLiked = false;
      } else {
        likedPosts.add(postId);
        isLiked = true;
      }
      
      // 保存更新后的点赞列表
      final likedPostsJson = json.encode(likedPosts.toList());
      await prefs.setString(_likedPostsKey, likedPostsJson);
      
      return isLiked;
    } catch (e) {
      print('Error toggling like: $e');
      return false;
    }
  }

  // 获取帖子的点赞数量（从本地存储）
  Future<int> getPostLikesCount(int postId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final postLikesJson = prefs.getString('$_postLikesKey$postId');
      if (postLikesJson != null) {
        return json.decode(postLikesJson) as int;
      }
    } catch (e) {
      print('Error loading post likes count: $e');
    }
    return 0;
  }

  // 更新帖子的点赞数量
  Future<void> updatePostLikesCount(int postId, int count) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final postLikesJson = json.encode(count);
      await prefs.setString('$_postLikesKey$postId', postLikesJson);
    } catch (e) {
      print('Error updating post likes count: $e');
    }
  }

  // 初始化帖子的点赞数量（从原始数据）
  Future<void> initializePostLikes(int postId, int originalCount) async {
    final currentCount = await getPostLikesCount(postId);
    if (currentCount == 0) {
      await updatePostLikesCount(postId, originalCount);
    }
  }

  // 获取所有点赞的帖子数量
  Future<int> getLikedPostsCount() async {
    final likedPosts = await getLikedPosts();
    return likedPosts.length;
  }

  // 清除所有点赞数据（用于测试或重置）
  Future<void> clearAllLikes() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_likedPostsKey);
      
      // 清除所有帖子的点赞数量
      final keys = prefs.getKeys();
      for (final key in keys) {
        if (key.startsWith(_postLikesKey)) {
          await prefs.remove(key);
        }
      }
    } catch (e) {
      print('Error clearing likes: $e');
    }
  }
}
