import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class FollowService {
  static const String _followingKey = 'following_users';
  static const String _followersKey = 'followers_count';
  
  static FollowService? _instance;
  static FollowService get instance => _instance ??= FollowService._();
  
  FollowService._();
  
  // 获取关注列表
  Future<Set<int>> getFollowingList() async {
    final prefs = await SharedPreferences.getInstance();
    final followingJson = prefs.getString(_followingKey);
    
    if (followingJson == null) {
      return <int>{};
    }
    
    try {
      final List<dynamic> followingList = json.decode(followingJson);
      return followingList.cast<int>().toSet();
    } catch (e) {
      return <int>{};
    }
  }
  
  // 保存关注列表
  Future<void> _saveFollowingList(Set<int> followingList) async {
    final prefs = await SharedPreferences.getInstance();
    final followingJson = json.encode(followingList.toList());
    await prefs.setString(_followingKey, followingJson);
  }
  
  // 检查是否已关注某用户
  Future<bool> isFollowing(int userId) async {
    final followingList = await getFollowingList();
    return followingList.contains(userId);
  }
  
  // 关注用户
  Future<bool> followUser(int userId) async {
    try {
      final followingList = await getFollowingList();
      
      if (followingList.contains(userId)) {
        return false; // 已经关注了
      }
      
      followingList.add(userId);
      await _saveFollowingList(followingList);
      
      // 更新用户的粉丝数（模拟）
      await _updateFollowerCount(userId, 1);
      
      return true;
    } catch (e) {
      return false;
    }
  }
  
  // 取消关注用户
  Future<bool> unfollowUser(int userId) async {
    try {
      final followingList = await getFollowingList();
      
      if (!followingList.contains(userId)) {
        return false; // 没有关注
      }
      
      followingList.remove(userId);
      await _saveFollowingList(followingList);
      
      // 更新用户的粉丝数（模拟）
      await _updateFollowerCount(userId, -1);
      
      return true;
    } catch (e) {
      return false;
    }
  }
  
  // 切换关注状态
  Future<bool> toggleFollow(int userId) async {
    final isCurrentlyFollowing = await isFollowing(userId);
    
    if (isCurrentlyFollowing) {
      return await unfollowUser(userId);
    } else {
      return await followUser(userId);
    }
  }
  
  // 获取关注数量
  Future<int> getFollowingCount() async {
    final followingList = await getFollowingList();
    return followingList.length;
  }
  
  // 更新用户粉丝数（本地存储，模拟服务器更新）
  Future<void> _updateFollowerCount(int userId, int change) async {
    final prefs = await SharedPreferences.getInstance();
    final key = '${_followersKey}_$userId';
    final currentCount = prefs.getInt(key) ?? 0;
    final newCount = (currentCount + change).clamp(0, double.infinity).toInt();
    await prefs.setInt(key, newCount);
  }
  
  // 获取用户的粉丝数变化
  Future<int> getFollowerCountChange(int userId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = '${_followersKey}_$userId';
    return prefs.getInt(key) ?? 0;
  }
  
  // 获取用户的实际粉丝数（原始数据 + 变化）
  Future<int> getUserFollowerCount(int userId, int originalCount) async {
    final change = await getFollowerCountChange(userId);
    return (originalCount + change).clamp(0, double.infinity).toInt();
  }
  
  // 清除所有关注数据（用于测试或重置）
  Future<void> clearAllData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_followingKey);
    
    // 清除所有粉丝数变化数据
    final keys = prefs.getKeys();
    for (String key in keys) {
      if (key.startsWith(_followersKey)) {
        await prefs.remove(key);
      }
    }
  }
  
  // 获取关注的用户列表（用于显示关注页面）
  Future<List<int>> getFollowingUserIds() async {
    final followingSet = await getFollowingList();
    return followingSet.toList();
  }
  
  // 批量检查关注状态
  Future<Map<int, bool>> checkMultipleFollowStatus(List<int> userIds) async {
    final followingList = await getFollowingList();
    final result = <int, bool>{};
    
    for (int userId in userIds) {
      result[userId] = followingList.contains(userId);
    }
    
    return result;
  }
  
  // 获取关注统计信息
  Future<Map<String, dynamic>> getFollowStats() async {
    final followingCount = await getFollowingCount();
    final followingList = await getFollowingList();
    
    return {
      'following_count': followingCount,
      'following_list': followingList.toList(),
      'last_updated': DateTime.now().toIso8601String(),
    };
  }
}
