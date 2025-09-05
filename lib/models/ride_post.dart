import 'user.dart';

class RidePost {
  final String id;
  final User author;
  final String title;
  final String description;
  final List<String> imageUrls;
  final DateTime createdAt;
  final DateTime? rideDate;
  final double? distance;
  final int? duration;
  final String? location;
  final String? route;
  final double? averageSpeed;
  final double? maxSpeed;
  final String? weather;
  final String? motorcycleModel;
  final List<String> tags;
  final int likesCount;
  final int commentsCount;
  final int sharesCount;
  final bool isLiked;
  final bool isBookmarked;
  final List<Comment> comments;

  RidePost({
    required this.id,
    required this.author,
    required this.title,
    required this.description,
    this.imageUrls = const [],
    required this.createdAt,
    this.rideDate,
    this.distance,
    this.duration,
    this.location,
    this.route,
    this.averageSpeed,
    this.maxSpeed,
    this.weather,
    this.motorcycleModel,
    this.tags = const [],
    this.likesCount = 0,
    this.commentsCount = 0,
    this.sharesCount = 0,
    this.isLiked = false,
    this.isBookmarked = false,
    this.comments = const [],
  });

  factory RidePost.fromJson(Map<String, dynamic> json) {
    return RidePost(
      id: json['id'] as String,
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrls: List<String>.from(json['imageUrls'] ?? []),
      createdAt: DateTime.parse(json['createdAt'] as String),
      rideDate: json['rideDate'] != null 
          ? DateTime.parse(json['rideDate'] as String) 
          : null,
      distance: (json['distance'] as num?)?.toDouble(),
      duration: json['duration'] as int?,
      location: json['location'] as String?,
      route: json['route'] as String?,
      averageSpeed: (json['averageSpeed'] as num?)?.toDouble(),
      maxSpeed: (json['maxSpeed'] as num?)?.toDouble(),
      weather: json['weather'] as String?,
      motorcycleModel: json['motorcycleModel'] as String?,
      tags: List<String>.from(json['tags'] ?? []),
      likesCount: json['likesCount'] as int? ?? 0,
      commentsCount: json['commentsCount'] as int? ?? 0,
      sharesCount: json['sharesCount'] as int? ?? 0,
      isLiked: json['isLiked'] as bool? ?? false,
      isBookmarked: json['isBookmarked'] as bool? ?? false,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((comment) => Comment.fromJson(comment as Map<String, dynamic>))
          .toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'author': author.toJson(),
      'title': title,
      'description': description,
      'imageUrls': imageUrls,
      'createdAt': createdAt.toIso8601String(),
      'rideDate': rideDate?.toIso8601String(),
      'distance': distance,
      'duration': duration,
      'location': location,
      'route': route,
      'averageSpeed': averageSpeed,
      'maxSpeed': maxSpeed,
      'weather': weather,
      'motorcycleModel': motorcycleModel,
      'tags': tags,
      'likesCount': likesCount,
      'commentsCount': commentsCount,
      'sharesCount': sharesCount,
      'isLiked': isLiked,
      'isBookmarked': isBookmarked,
      'comments': comments.map((comment) => comment.toJson()).toList(),
    };
  }

  RidePost copyWith({
    String? id,
    User? author,
    String? title,
    String? description,
    List<String>? imageUrls,
    DateTime? createdAt,
    DateTime? rideDate,
    double? distance,
    int? duration,
    String? location,
    String? route,
    double? averageSpeed,
    double? maxSpeed,
    String? weather,
    String? motorcycleModel,
    List<String>? tags,
    int? likesCount,
    int? commentsCount,
    int? sharesCount,
    bool? isLiked,
    bool? isBookmarked,
    List<Comment>? comments,
  }) {
    return RidePost(
      id: id ?? this.id,
      author: author ?? this.author,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrls: imageUrls ?? this.imageUrls,
      createdAt: createdAt ?? this.createdAt,
      rideDate: rideDate ?? this.rideDate,
      distance: distance ?? this.distance,
      duration: duration ?? this.duration,
      location: location ?? this.location,
      route: route ?? this.route,
      averageSpeed: averageSpeed ?? this.averageSpeed,
      maxSpeed: maxSpeed ?? this.maxSpeed,
      weather: weather ?? this.weather,
      motorcycleModel: motorcycleModel ?? this.motorcycleModel,
      tags: tags ?? this.tags,
      likesCount: likesCount ?? this.likesCount,
      commentsCount: commentsCount ?? this.commentsCount,
      sharesCount: sharesCount ?? this.sharesCount,
      isLiked: isLiked ?? this.isLiked,
      isBookmarked: isBookmarked ?? this.isBookmarked,
      comments: comments ?? this.comments,
    );
  }
}

class Comment {
  final String id;
  final User author;
  final String content;
  final DateTime createdAt;
  final int likesCount;
  final bool isLiked;
  final List<Comment> replies;

  Comment({
    required this.id,
    required this.author,
    required this.content,
    required this.createdAt,
    this.likesCount = 0,
    this.isLiked = false,
    this.replies = const [],
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'] as String,
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      likesCount: json['likesCount'] as int? ?? 0,
      isLiked: json['isLiked'] as bool? ?? false,
      replies: (json['replies'] as List<dynamic>?)
          ?.map((reply) => Comment.fromJson(reply as Map<String, dynamic>))
          .toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'author': author.toJson(),
      'content': content,
      'createdAt': createdAt.toIso8601String(),
      'likesCount': likesCount,
      'isLiked': isLiked,
      'replies': replies.map((reply) => reply.toJson()).toList(),
    };
  }

  Comment copyWith({
    String? id,
    User? author,
    String? content,
    DateTime? createdAt,
    int? likesCount,
    bool? isLiked,
    List<Comment>? replies,
  }) {
    return Comment(
      id: id ?? this.id,
      author: author ?? this.author,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      likesCount: likesCount ?? this.likesCount,
      isLiked: isLiked ?? this.isLiked,
      replies: replies ?? this.replies,
    );
  }
}
