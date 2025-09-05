class MotorcycleUserPost {
  final int id;
  final String content;
  final List<String> images;
  final String? video;
  final int likes;
  final int comments;
  final int shares;
  final DateTime timestamp;
  final List<String> hashtags;

  MotorcycleUserPost({
    required this.id,
    required this.content,
    required this.images,
    this.video,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.timestamp,
    required this.hashtags,
  });

  factory MotorcycleUserPost.fromJson(Map<String, dynamic> json) {
    return MotorcycleUserPost(
      id: json['id'] as int,
      content: json['content'] as String,
      images: List<String>.from(json['images'] ?? []),
      video: json['video'] as String?,
      likes: json['likes'] as int? ?? 0,
      comments: json['comments'] as int? ?? 0,
      shares: json['shares'] as int? ?? 0,
      timestamp: DateTime.parse(json['timestamp'] as String),
      hashtags: List<String>.from(json['hashtags'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'content': content,
      'images': images,
      'video': video,
      'likes': likes,
      'comments': comments,
      'shares': shares,
      'timestamp': timestamp.toIso8601String(),
      'hashtags': hashtags,
    };
  }
}

class MotorcycleUser {
  final int id;
  final String username;
  final String name;
  final int age;
  final String location;
  final String bio;
  final int followerCount;
  final int followingCount;
  final String profileImage;
  final String backgroundImage;
  final String bikeModel;
  final String ridingExperience;
  final List<String> favoriteRoutes;
  final String occupation;
  final bool verified;
  final List<String> achievements;
  final int totalMiles;
  final String longestRide;
  final Map<String, String> contact;
  final List<MotorcycleUserPost> posts;

  MotorcycleUser({
    required this.id,
    required this.username,
    required this.name,
    required this.age,
    required this.location,
    required this.bio,
    required this.followerCount,
    required this.followingCount,
    required this.profileImage,
    required this.backgroundImage,
    required this.bikeModel,
    required this.ridingExperience,
    required this.favoriteRoutes,
    required this.occupation,
    required this.verified,
    required this.achievements,
    required this.totalMiles,
    required this.longestRide,
    required this.contact,
    required this.posts,
  });

  factory MotorcycleUser.fromJson(Map<String, dynamic> json) {
    return MotorcycleUser(
      id: json['id'] as int,
      username: json['username'] as String,
      name: json['name'] as String,
      age: json['age'] as int,
      location: json['location'] as String,
      bio: json['bio'] as String,
      followerCount: json['follower_count'] as int? ?? 0,
      followingCount: json['following_count'] as int? ?? 0,
      profileImage: json['profile_image'] as String,
      backgroundImage: json['background_image'] as String,
      bikeModel: json['bike_model'] as String,
      ridingExperience: json['riding_experience'] as String,
      favoriteRoutes: List<String>.from(json['favorite_routes'] ?? []),
      occupation: json['occupation'] as String,
      verified: json['verified'] as bool? ?? false,
      achievements: List<String>.from(json['achievements'] ?? []),
      totalMiles: json['total_miles'] as int? ?? 0,
      longestRide: json['longest_ride'] as String,
      contact: Map<String, String>.from(json['contact'] ?? {}),
      posts: (json['posts'] as List<dynamic>?)
          ?.map((post) => MotorcycleUserPost.fromJson(post as Map<String, dynamic>))
          .toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'name': name,
      'age': age,
      'location': location,
      'bio': bio,
      'follower_count': followerCount,
      'following_count': followingCount,
      'profile_image': profileImage,
      'background_image': backgroundImage,
      'bike_model': bikeModel,
      'riding_experience': ridingExperience,
      'favorite_routes': favoriteRoutes,
      'occupation': occupation,
      'verified': verified,
      'achievements': achievements,
      'total_miles': totalMiles,
      'longest_ride': longestRide,
      'contact': contact,
      'posts': posts.map((post) => post.toJson()).toList(),
    };
  }
}
