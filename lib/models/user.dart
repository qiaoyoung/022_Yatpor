class User {
  final String id;
  final String username;
  final String displayName;
  final String? avatarUrl;
  final String? bio;
  final String? location;
  final DateTime joinDate;
  final int totalRides;
  final double totalDistance;
  final int totalHours;
  final String? motorcycleModel;
  final String? motorcycleYear;
  final List<String> badges;
  final int followersCount;
  final int followingCount;
  final bool isVerified;

  User({
    required this.id,
    required this.username,
    required this.displayName,
    this.avatarUrl,
    this.bio,
    this.location,
    required this.joinDate,
    this.totalRides = 0,
    this.totalDistance = 0.0,
    this.totalHours = 0,
    this.motorcycleModel,
    this.motorcycleYear,
    this.badges = const [],
    this.followersCount = 0,
    this.followingCount = 0,
    this.isVerified = false,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      username: json['username'] as String,
      displayName: json['displayName'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      joinDate: DateTime.parse(json['joinDate'] as String),
      totalRides: json['totalRides'] as int? ?? 0,
      totalDistance: (json['totalDistance'] as num?)?.toDouble() ?? 0.0,
      totalHours: json['totalHours'] as int? ?? 0,
      motorcycleModel: json['motorcycleModel'] as String?,
      motorcycleYear: json['motorcycleYear'] as String?,
      badges: List<String>.from(json['badges'] ?? []),
      followersCount: json['followersCount'] as int? ?? 0,
      followingCount: json['followingCount'] as int? ?? 0,
      isVerified: json['isVerified'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'displayName': displayName,
      'avatarUrl': avatarUrl,
      'bio': bio,
      'location': location,
      'joinDate': joinDate.toIso8601String(),
      'totalRides': totalRides,
      'totalDistance': totalDistance,
      'totalHours': totalHours,
      'motorcycleModel': motorcycleModel,
      'motorcycleYear': motorcycleYear,
      'badges': badges,
      'followersCount': followersCount,
      'followingCount': followingCount,
      'isVerified': isVerified,
    };
  }

  User copyWith({
    String? id,
    String? username,
    String? displayName,
    String? avatarUrl,
    String? bio,
    String? location,
    DateTime? joinDate,
    int? totalRides,
    double? totalDistance,
    int? totalHours,
    String? motorcycleModel,
    String? motorcycleYear,
    List<String>? badges,
    int? followersCount,
    int? followingCount,
    bool? isVerified,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      displayName: displayName ?? this.displayName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      bio: bio ?? this.bio,
      location: location ?? this.location,
      joinDate: joinDate ?? this.joinDate,
      totalRides: totalRides ?? this.totalRides,
      totalDistance: totalDistance ?? this.totalDistance,
      totalHours: totalHours ?? this.totalHours,
      motorcycleModel: motorcycleModel ?? this.motorcycleModel,
      motorcycleYear: motorcycleYear ?? this.motorcycleYear,
      badges: badges ?? this.badges,
      followersCount: followersCount ?? this.followersCount,
      followingCount: followingCount ?? this.followingCount,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}
