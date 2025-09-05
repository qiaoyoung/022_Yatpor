import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class BlockService {
  static const String _blockedUsersKey = 'blocked_users';
  
  static BlockService? _instance;
  static BlockService get instance => _instance ??= BlockService._();
  
  BlockService._();
  
  // 获取拉黑用户列表
  Future<Set<int>> getBlockedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final blockedJson = prefs.getString(_blockedUsersKey);
    
    if (blockedJson == null) {
      return <int>{};
    }
    
    try {
      final List<dynamic> blockedList = json.decode(blockedJson);
      return blockedList.cast<int>().toSet();
    } catch (e) {
      return <int>{};
    }
  }
  
  // 保存拉黑用户列表
  Future<void> _saveBlockedUsers(Set<int> blockedUsers) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedJson = json.encode(blockedUsers.toList());
    await prefs.setString(_blockedUsersKey, blockedJson);
  }
  
  // 检查用户是否被拉黑
  Future<bool> isUserBlocked(int userId) async {
    final blockedUsers = await getBlockedUsers();
    return blockedUsers.contains(userId);
  }
  
  // 拉黑用户
  Future<bool> blockUser(int userId) async {
    try {
      final blockedUsers = await getBlockedUsers();
      
      if (blockedUsers.contains(userId)) {
        return false; // 已经拉黑了
      }
      
      blockedUsers.add(userId);
      await _saveBlockedUsers(blockedUsers);
      
      return true;
    } catch (e) {
      return false;
    }
  }
  
  // 解除拉黑用户
  Future<bool> unblockUser(int userId) async {
    try {
      final blockedUsers = await getBlockedUsers();
      
      if (!blockedUsers.contains(userId)) {
        return false; // 没有拉黑
      }
      
      blockedUsers.remove(userId);
      await _saveBlockedUsers(blockedUsers);
      
      return true;
    } catch (e) {
      return false;
    }
  }
  
  // 切换拉黑状态
  Future<bool> toggleBlockUser(int userId) async {
    final isCurrentlyBlocked = await isUserBlocked(userId);
    
    if (isCurrentlyBlocked) {
      return await unblockUser(userId);
    } else {
      return await blockUser(userId);
    }
  }
  
  // 获取拉黑用户数量
  Future<int> getBlockedUsersCount() async {
    final blockedUsers = await getBlockedUsers();
    return blockedUsers.length;
  }
  
  // 获取拉黑用户ID列表
  Future<List<int>> getBlockedUserIds() async {
    final blockedUsers = await getBlockedUsers();
    return blockedUsers.toList();
  }
  
  // 批量检查拉黑状态
  Future<Map<int, bool>> checkMultipleBlockStatus(List<int> userIds) async {
    final blockedUsers = await getBlockedUsers();
    final result = <int, bool>{};
    
    for (int userId in userIds) {
      result[userId] = blockedUsers.contains(userId);
    }
    
    return result;
  }
  
  // 清除所有拉黑数据
  Future<void> clearAllBlockedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_blockedUsersKey);
  }
}
