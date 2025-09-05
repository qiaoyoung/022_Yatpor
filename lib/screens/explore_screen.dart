import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _selectedCategoryIndex = 0;
  final List<String> _categories = ['Routes', 'Events', 'Groups', 'Destinations'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            expandedHeight: 120,
            floating: false,
            pinned: true,
            backgroundColor: AppTheme.primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Explore',
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
                icon: const Icon(Icons.filter_list, color: Colors.white),
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
                                  _selectedCategoryIndex = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: _selectedCategoryIndex == index
                                      ? AppTheme.primaryColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: _selectedCategoryIndex == index
                                        ? AppTheme.primaryColor
                                        : Colors.grey[300]!,
                                  ),
                                ),
                                child: Text(
                                  _categories[index],
                                  style: TextStyle(
                                    color: _selectedCategoryIndex == index
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
          
          // Content based on selected category
          SliverToBoxAdapter(
            child: _buildCategoryContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryContent() {
    switch (_selectedCategoryIndex) {
      case 0:
        return _buildRoutesContent();
      case 1:
        return _buildEventsContent();
      case 2:
        return _buildGroupsContent();
      case 3:
        return _buildDestinationsContent();
      default:
        return _buildRoutesContent();
    }
  }

  Widget _buildRoutesContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Featured Routes
          Text(
            'Featured Routes',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _getFeaturedRoutes().length,
              itemBuilder: (context, index) {
                final route = _getFeaturedRoutes()[index];
                return Container(
                  width: 280,
                  margin: const EdgeInsets.only(right: 16),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(route['image']),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(12),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.7),
                                  ],
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        route['name'],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        route['location'],
                                        style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Icon(
                                Icons.straighten,
                                color: AppTheme.primaryColor,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${route['distance']} km',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.star,
                                color: AppTheme.primaryColor,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${route['rating']}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Popular Routes
          Text(
            'Popular Routes',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _getPopularRoutes().length,
            itemBuilder: (context, index) {
              final route = _getPopularRoutes()[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      route['image'],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    route['name'],
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(route['location']),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.straighten,
                            color: AppTheme.primaryColor,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${route['distance']} km',
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(width: 16),
                          Icon(
                            Icons.star,
                            color: AppTheme.primaryColor,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${route['rating']}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEventsContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upcoming Events',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _getEvents().length,
            itemBuilder: (context, index) {
              final event = _getEvents()[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.network(
                        event['image'],
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: AppTheme.primaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  event['type'],
                                  style: TextStyle(
                                    color: AppTheme.primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                event['date'],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppTheme.textSecondaryColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            event['name'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            event['location'],
                            style: const TextStyle(
                              color: AppTheme.textSecondaryColor,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.people,
                                color: AppTheme.primaryColor,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${event['attendees']} attending',
                                style: const TextStyle(fontSize: 12),
                              ),
                              const Spacer(),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppTheme.primaryColor,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                ),
                                child: const Text('Join'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildGroupsContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Riding Groups',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _getGroups().length,
            itemBuilder: (context, index) {
              final group = _getGroups()[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(group['image']),
                  ),
                  title: Text(
                    group['name'],
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(group['description']),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.people,
                            color: AppTheme.primaryColor,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${group['members']} members',
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(width: 16),
                          Icon(
                            Icons.location_on,
                            color: AppTheme.primaryColor,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            group['location'],
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                    ),
                    child: const Text('Join'),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationsContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Destinations',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.8,
            ),
            itemCount: _getDestinations().length,
            itemBuilder: (context, index) {
              final destination = _getDestinations()[index];
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.network(
                          destination['image'],
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            destination['name'],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            destination['location'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppTheme.textSecondaryColor,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppTheme.primaryColor,
                                size: 14,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${destination['rating']}',
                                style: const TextStyle(fontSize: 12),
                              ),
                              const Spacer(),
                              Text(
                                '${destination['distance']} km',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _getFeaturedRoutes() {
    return [
      {
        'name': 'Pacific Coast Highway',
        'location': 'California, USA',
        'distance': 655,
        'rating': 4.8,
        'image': 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800',
      },
      {
        'name': 'Blue Ridge Parkway',
        'location': 'North Carolina, USA',
        'distance': 755,
        'rating': 4.7,
        'image': 'https://images.unsplash.com/photo-1449824913935-59a10b8d2000?w=800',
      },
      {
        'name': 'Route 66',
        'location': 'Illinois to California',
        'distance': 3940,
        'rating': 4.9,
        'image': 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800',
      },
    ];
  }

  List<Map<String, dynamic>> _getPopularRoutes() {
    return [
      {
        'name': 'Tail of the Dragon',
        'location': 'Tennessee, USA',
        'distance': 18,
        'rating': 4.6,
        'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800',
      },
      {
        'name': 'Beartooth Highway',
        'location': 'Montana, USA',
        'distance': 68,
        'rating': 4.8,
        'image': 'https://images.unsplash.com/photo-1568772585407-9361f9bf3a87?w=800',
      },
      {
        'name': 'Going-to-the-Sun Road',
        'location': 'Montana, USA',
        'distance': 50,
        'rating': 4.7,
        'image': 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800',
      },
    ];
  }

  List<Map<String, dynamic>> _getEvents() {
    return [
      {
        'name': 'Motorcycle Rally 2024',
        'type': 'Rally',
        'location': 'Sturgis, South Dakota',
        'date': 'Aug 5-11, 2024',
        'attendees': 1250,
        'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800',
      },
      {
        'name': 'Adventure Riding Workshop',
        'type': 'Workshop',
        'location': 'Moab, Utah',
        'date': 'Sep 15-17, 2024',
        'attendees': 45,
        'image': 'https://images.unsplash.com/photo-1568772585407-9361f9bf3a87?w=800',
      },
      {
        'name': 'Coastal Cruise Meetup',
        'type': 'Meetup',
        'location': 'Big Sur, California',
        'date': 'Oct 8, 2024',
        'attendees': 89,
        'image': 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800',
      },
    ];
  }

  List<Map<String, dynamic>> _getGroups() {
    return [
      {
        'name': 'Adventure Riders Club',
        'description': 'Off-road and adventure riding enthusiasts',
        'members': 1247,
        'location': 'San Francisco, CA',
        'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800',
      },
      {
        'name': 'Sport Bike Enthusiasts',
        'description': 'High-performance sport bike riders',
        'members': 892,
        'location': 'Los Angeles, CA',
        'image': 'https://images.unsplash.com/photo-1568772585407-9361f9bf3a87?w=800',
      },
      {
        'name': 'Vintage Motorcycle Club',
        'description': 'Classic and vintage motorcycle collectors',
        'members': 456,
        'location': 'Austin, TX',
        'image': 'https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?w=800',
      },
    ];
  }

  List<Map<String, dynamic>> _getDestinations() {
    return [
      {
        'name': 'Yosemite National Park',
        'location': 'California, USA',
        'rating': 4.8,
        'distance': 280,
        'image': 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800',
      },
      {
        'name': 'Grand Canyon',
        'location': 'Arizona, USA',
        'rating': 4.9,
        'distance': 450,
        'image': 'https://images.unsplash.com/photo-1449824913935-59a10b8d2000?w=800',
      },
      {
        'name': 'Yellowstone National Park',
        'location': 'Wyoming, USA',
        'rating': 4.7,
        'distance': 320,
        'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800',
      },
      {
        'name': 'Glacier National Park',
        'location': 'Montana, USA',
        'rating': 4.8,
        'distance': 380,
        'image': 'https://images.unsplash.com/photo-1568772585407-9361f9bf3a87?w=800',
      },
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
