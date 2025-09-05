import 'package:shared_preferences/shared_preferences.dart';

class UserProfileService {
  static final UserProfileService _instance = UserProfileService._internal();
  factory UserProfileService() => _instance;
  UserProfileService._internal();

  static const String _userNameKey = 'user_name';
  static const String _userAvatarPathKey = 'user_avatar_path';
  static const String _defaultUserName = 'Motorcycle Rider';
  static const String _defaultAvatarPath = 'assets/images/default_avatar.png';

  Future<String> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userNameKey) ?? _defaultUserName;
  }

  Future<String> getUserAvatarPath() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userAvatarPathKey) ?? _defaultAvatarPath;
  }

  Future<void> setUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userNameKey, name);
  }

  Future<void> setUserAvatarPath(String path) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userAvatarPathKey, path);
  }

  Future<void> resetToDefault() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userNameKey);
    await prefs.remove(_userAvatarPathKey);
  }
}
