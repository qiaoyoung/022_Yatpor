# Yatpor - Motorcycle Riding Community App

Yatpor is a modern social platform designed specifically for motorcycle enthusiasts to share their riding experiences, discover new routes, connect with fellow riders, and track their adventures.

## Features

### 🏠 Home Feed
- Browse riding posts from the community
- Filter content by categories (All, Following, Popular, Recent)
- Like, comment, and share posts
- View detailed ride statistics and photos

### 🗺️ Explore
- **Routes**: Discover popular motorcycle routes with ratings and reviews
- **Events**: Find upcoming motorcycle events, rallies, and meetups
- **Groups**: Join riding groups and communities
- **Destinations**: Explore popular motorcycle destinations

### 💬 Messages & Notifications
- Real-time messaging with other riders
- Group chats for riding communities
- Push notifications for likes, comments, and events
- Message organization with read/unread status

### 👤 Profile
- Personal riding statistics and achievements
- Ride history and favorite routes
- Badge system for accomplishments
- Followers and following management

## Design

- **Theme Color**: #F7BA00 (Golden Yellow)
- **Modern UI**: Clean, intuitive interface with Material Design 3
- **Responsive**: Optimized for various screen sizes
- **Accessibility**: High contrast and readable typography

## Project Structure

```
lib/
├── main.dart                 # Main application entry point
├── theme/
│   └── app_theme.dart        # Theme configuration and colors
├── models/
│   ├── user.dart            # User data model
│   └── ride_post.dart       # Ride post and comment models
├── screens/
│   ├── home_screen.dart     # Main feed screen
│   ├── explore_screen.dart  # Explore routes, events, groups
│   ├── messages_screen.dart # Messages and notifications
│   └── profile_screen.dart  # User profile and stats
└── widgets/
    └── ride_post_card.dart  # Reusable ride post component
```

## Getting Started

1. **Prerequisites**
   - Flutter SDK (>= 3.8.1)
   - Dart (>= 3.0)
   - Android Studio / VS Code

2. **Installation**
   ```bash
   # Clone the repository
   git clone <repository-url>
   cd yatpor
   
   # Install dependencies
   flutter pub get
   
   # Run the app
   flutter run
   ```

3. **Dependencies**
   - `http`: For API requests
   - `cached_network_image`: Image caching
   - `provider`: State management
   - `shared_preferences`: Local storage
   - `intl`: Date formatting

## Key Components

### Theme System
The app uses a comprehensive theme system with:
- Primary color: #F7BA00
- Consistent typography scales
- Material Design 3 components
- Custom color palettes for motorcycle themes

### Data Models
- **User**: Complete user profile with riding statistics
- **RidePost**: Comprehensive post model with ride data
- **Comment**: Nested comment system

### UI Components
- **RidePostCard**: Feature-rich post display with images, stats, and actions
- **Custom App Bars**: Gradient headers with search and action buttons
- **Tab Systems**: Organized content with smooth transitions

## Future Enhancements

- [ ] Real-time GPS tracking during rides
- [ ] Route planning and navigation
- [ ] Weather integration
- [ ] Motorcycle maintenance tracking
- [ ] Advanced analytics and insights
- [ ] Social features (stories, live streaming)
- [ ] Marketplace for motorcycle gear
- [ ] Emergency contact system

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support and questions, please contact the development team or create an issue in the repository.

---

**Yatpor** - Where every ride tells a story 🏍️
