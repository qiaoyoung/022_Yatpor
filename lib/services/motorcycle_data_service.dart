import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/motorcycle_user_post.dart';

class MotorcycleDataService {
  static final MotorcycleDataService _instance = MotorcycleDataService._internal();
  factory MotorcycleDataService() => _instance;
  MotorcycleDataService._internal();

  List<MotorcycleUser> _users = [];
  List<MotorcycleUserPost> _allPosts = [];

  List<MotorcycleUser> get users => _users;
  List<MotorcycleUserPost> get allPosts => _allPosts;

  Future<void> loadData() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/post/motorcycle_users.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      _users = (jsonData['users'] as List<dynamic>)
          .map((userJson) => MotorcycleUser.fromJson(userJson as Map<String, dynamic>))
          .toList();
      
      // 收集所有用户的动态
      _allPosts.clear();
      for (final user in _users) {
        for (final post in user.posts) {
          _allPosts.add(post);
        }
      }
      
      // 按时间排序（最新的在前）
      _allPosts.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    } catch (e) {
      print('Error loading motorcycle data: $e');
    }
  }

  MotorcycleUser? getUserById(int id) {
    try {
      return _users.firstWhere((user) => user.id == id);
    } catch (e) {
      return null;
    }
  }

  List<MotorcycleUserPost> getPostsByUserId(int userId) {
    final user = getUserById(userId);
    return user?.posts ?? [];
  }

  List<MotorcycleUserPost> getPostsByBikeModel(String bikeModel) {
    return _allPosts.where((post) {
      final user = _users.firstWhere((u) => u.posts.contains(post));
      return user.bikeModel.toLowerCase().contains(bikeModel.toLowerCase());
    }).toList();
  }

  List<MotorcycleUserPost> getPostsByLocation(String location) {
    return _allPosts.where((post) {
      final user = _users.firstWhere((u) => u.posts.contains(post));
      return user.location.toLowerCase().contains(location.toLowerCase());
    }).toList();
  }

  List<MotorcycleUserPost> searchPosts(String query) {
    final lowercaseQuery = query.toLowerCase();
    return _allPosts.where((post) {
      // 搜索动态内容
      if (post.content.toLowerCase().contains(lowercaseQuery)) {
        return true;
      }
      
      // 搜索标签
      if (post.hashtags.any((hashtag) => hashtag.toLowerCase().contains(lowercaseQuery))) {
        return true;
      }
      
      // 搜索用户名
      final user = _users.firstWhere((u) => u.posts.contains(post));
      if (user.name.toLowerCase().contains(lowercaseQuery) ||
          user.username.toLowerCase().contains(lowercaseQuery)) {
        return true;
      }
      
      return false;
    }).toList();
  }

  List<MotorcycleUser> searchUsers(String query) {
    final lowercaseQuery = query.toLowerCase();
    return _users.where((user) {
      return user.name.toLowerCase().contains(lowercaseQuery) ||
             user.username.toLowerCase().contains(lowercaseQuery) ||
             user.location.toLowerCase().contains(lowercaseQuery) ||
             user.bikeModel.toLowerCase().contains(lowercaseQuery) ||
             user.bio.toLowerCase().contains(lowercaseQuery);
    }).toList();
  }

  List<MotorcycleUser> getUsersByBikeBrand(String brand) {
    return _users.where((user) {
      return user.bikeModel.toLowerCase().contains(brand.toLowerCase());
    }).toList();
  }

  List<MotorcycleUser> getUsersByLocation(String location) {
    return _users.where((user) {
      return user.location.toLowerCase().contains(location.toLowerCase());
    }).toList();
  }

  List<MotorcycleUser> getVerifiedUsers() {
    return _users.where((user) => user.verified).toList();
  }

  List<MotorcycleUser> getTopUsersByFollowers({int limit = 10}) {
    final sortedUsers = List<MotorcycleUser>.from(_users);
    sortedUsers.sort((a, b) => b.followerCount.compareTo(a.followerCount));
    return sortedUsers.take(limit).toList();
  }

  List<MotorcycleUserPost> getTopPostsByLikes({int limit = 10}) {
    final sortedPosts = List<MotorcycleUserPost>.from(_allPosts);
    sortedPosts.sort((a, b) => b.likes.compareTo(a.likes));
    return sortedPosts.take(limit).toList();
  }
}
