import 'package:flutter/material.dart';
import '../models/ride_post.dart';
import '../models/user.dart';
import '../widgets/ride_post_card.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<String> _categories = ['All', 'Following', 'Popular', 'Recent'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          // Custom App Bar
          SliverAppBar(
            expandedHeight: 120,
            floating: false,
            pinned: true,
            backgroundColor: AppTheme.primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Yatpor',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppTheme.primaryColor,
                      AppTheme.primaryLightColor,
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined, color: Colors.white),
              ),
            ],
          ),
          
          // Category tabs
          SliverPersistentHeader(
            pinned: true,
            delegate: _CategoryHeaderDelegate(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    // Category tabs
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: _categories.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: _selectedIndex == index
                                      ? AppTheme.primaryColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: _selectedIndex == index
                                        ? AppTheme.primaryColor
                                        : Colors.grey[300]!,
                                  ),
                                ),
                                child: Text(
                                  _categories[index],
                                  style: TextStyle(
                                    color: _selectedIndex == index
                                        ? Colors.white
                                        : Colors.grey[600],
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Divider(height: 1),
                  ],
                ),
              ),
            ),
          ),
          
          // Content
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return RidePostCard(
                  post: _getMockPosts()[index],
                  onTap: () {
                    // Navigate to post detail
                  },
                  onLike: () {
                    // Handle like
                  },
                  onComment: () {
                    // Handle comment
                  },
                  onShare: () {
                    // Handle share
                  },
                  onBookmark: () {
                    // Handle bookmark
                  },
                );
              },
              childCount: _getMockPosts().length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to create post
        },
        backgroundColor: AppTheme.primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  List<RidePost> _getMockPosts() {
    final mockUsers = [
      User(
        id: '1',
        username: 'speedrider',
        displayName: 'Alex Thompson',
        avatarUrl: null,
        bio: 'Adventure rider from California',
        location: 'San Francisco, CA',
        joinDate: DateTime.now().subtract(const Duration(days: 365)),
        totalRides: 127,
        totalDistance: 15420.5,
        totalHours: 320,
        motorcycleModel: 'BMW R1250GS',
        motorcycleYear: '2022',
        badges: ['Adventure', 'Long Distance'],
        followersCount: 1247,
        followingCount: 89,
        isVerified: true,
      ),
      User(
        id: '2',
        username: 'citycruiser',
        displayName: 'Sarah Chen',
        avatarUrl: null,
        bio: 'Urban rider exploring the city',
        location: 'New York, NY',
        joinDate: DateTime.now().subtract(const Duration(days: 180)),
        totalRides: 89,
        totalDistance: 5670.2,
        totalHours: 145,
        motorcycleModel: 'Honda CB300R',
        motorcycleYear: '2023',
        badges: ['Urban', 'Beginner'],
        followersCount: 456,
        followingCount: 234,
        isVerified: false,
      ),
      User(
        id: '3',
        username: 'roadwarrior',
        displayName: 'Mike Rodriguez',
        avatarUrl: null,
        bio: 'Cross-country touring enthusiast',
        location: 'Austin, TX',
        joinDate: DateTime.now().subtract(const Duration(days: 730)),
        totalRides: 203,
        totalDistance: 28950.8,
        totalHours: 567,
        motorcycleModel: 'Harley-Davidson Street Glide',
        motorcycleYear: '2021',
        badges: ['Touring', 'Veteran'],
        followersCount: 2156,
        followingCount: 156,
        isVerified: true,
      ),
    ];

    return [
      RidePost(
        id: '1',
        author: mockUsers[0],
        title: 'Epic Mountain Pass Adventure',
        description: 'Just completed an incredible ride through the Sierra Nevada mountains. The views were absolutely breathtaking and the roads were perfect for some spirited riding. Met some amazing fellow riders along the way!',
        imageUrls: [
          'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800',
          'https://images.unsplash.com/photo-1568772585407-9361f9bf3a87?w=800',
        ],
        createdAt: DateTime.now().subtract(const Duration(hours: 2)),
        rideDate: DateTime.now().subtract(const Duration(days: 1)),
        distance: 245.6,
        duration: 180,
        location: 'Sierra Nevada, CA',
        route: 'Highway 395 to Tioga Pass',
        averageSpeed: 82.5,
        maxSpeed: 95.2,
        weather: 'Sunny, 75°F',
        motorcycleModel: 'BMW R1250GS',
        tags: ['Adventure', 'Mountains', 'Scenic'],
        likesCount: 127,
        commentsCount: 23,
        sharesCount: 8,
      ),
      RidePost(
        id: '2',
        author: mockUsers[1],
        title: 'Sunset City Cruise',
        description: 'Perfect evening for a ride around the city. The sunset over the skyline was magical, and the traffic was surprisingly light. Love these peaceful moments on two wheels!',
        imageUrls: [
          'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800',
        ],
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
        rideDate: DateTime.now().subtract(const Duration(days: 1)),
        distance: 45.2,
        duration: 75,
        location: 'Manhattan, NY',
        route: 'West Side Highway Loop',
        averageSpeed: 36.2,
        maxSpeed: 45.8,
        weather: 'Clear, 68°F',
        motorcycleModel: 'Honda CB300R',
        tags: ['Urban', 'Sunset', 'City'],
        likesCount: 89,
        commentsCount: 12,
        sharesCount: 3,
      ),
      RidePost(
        id: '3',
        author: mockUsers[2],
        title: 'Texas Hill Country Tour',
        description: 'Spent the weekend exploring the beautiful Texas Hill Country. The winding roads through the rolling hills were absolutely perfect. Stopped at some amazing local BBQ joints along the way!',
        imageUrls: [
          'https://images.unsplash.com/photo-1568772585407-9361f9bf3a87?w=800',
          'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800',
          'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800',
        ],
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
        rideDate: DateTime.now().subtract(const Duration(days: 2)),
        distance: 387.4,
        duration: 320,
        location: 'Texas Hill Country',
        route: 'Three Sisters Loop',
        averageSpeed: 72.6,
        maxSpeed: 88.9,
        weather: 'Partly Cloudy, 78°F',
        motorcycleModel: 'Harley-Davidson Street Glide',
        tags: ['Touring', 'Hill Country', 'BBQ'],
        likesCount: 234,
        commentsCount: 45,
        sharesCount: 18,
      ),
    ];
  }
}

class _CategoryHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _CategoryHeaderDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 51;

  @override
  double get minExtent => 51;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
