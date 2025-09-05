import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../theme/app_theme.dart';
import '../services/user_profile_service.dart';
import 'about_us_screen.dart';
import 'privacy_policy_screen.dart';
import 'terms_of_service_screen.dart';

class Tab4Screen extends StatefulWidget {
  const Tab4Screen({super.key});

  @override
  State<Tab4Screen> createState() => _Tab4ScreenState();
}

class _Tab4ScreenState extends State<Tab4Screen> {
  final UserProfileService _userProfileService = UserProfileService();
  final TextEditingController _nameController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  
  String _userName = 'Motorcycle Rider';
  String _userAvatarPath = 'assets/images/default_avatar.png';
  bool _isEditing = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadUserProfile();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _loadUserProfile() async {
    final name = await _userProfileService.getUserName();
    final avatarPath = await _userProfileService.getUserAvatarPath();
    
    setState(() {
      _userName = name;
      _userAvatarPath = avatarPath;
      _nameController.text = name;
      _isLoading = false;
    });
  }

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 80,
      );
      
      if (image != null) {
        final newPath = image.path;
        await _userProfileService.setUserAvatarPath(newPath);
        setState(() {
          _userAvatarPath = newPath;
        });
        
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Avatar updated successfully!'),
              backgroundColor: Colors.green,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error picking image: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _saveName() async {
    final newName = _nameController.text.trim();
    if (newName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Name cannot be empty'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    await _userProfileService.setUserName(newName);
    setState(() {
      _userName = newName;
      _isEditing = false;
    });

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Name updated successfully!'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  void _startEditing() {
    setState(() {
      _isEditing = true;
      _nameController.text = _userName;
    });
  }

  void _cancelEditing() {
    setState(() {
      _isEditing = false;
      _nameController.text = _userName;
    });
  }



  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: Center(
          child: CircularProgressIndicator(
            color: AppTheme.primaryColor,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
              body: Stack(
          children: [
            // Background Image
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/yatpor_header.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
              ),
            ),
            
            // Content
            SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  
                  // Reset Button
                  _buildResetButton(),
                  
                  const SizedBox(height: 30),
                  
                  // Profile Header
                  _buildProfileHeader(),
                  
                  const SizedBox(height: 30),
                  
                  // Profile Actions
                  _buildProfileActions(),
                 
                ],
              ),
            ),
          ],
        ),
    );
  }

    Widget _buildResetButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.primaryColor.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20),
        ),

      ),
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      children: [
        // Avatar Section
        Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppTheme.primaryColor,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.primaryColor.withValues(alpha: 0.3),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ClipOval(
                child: _userAvatarPath.startsWith('assets/')
                    ? Image.asset(
                        _userAvatarPath,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.grey,
                            ),
                          );
                        },
                      )
                    : File(_userAvatarPath).existsSync()
                        ? Image.file(
                            File(_userAvatarPath),
                            fit: BoxFit.cover,
                          )
                        : Container(
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.grey,
                            ),
                          ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: IconButton(
                  onPressed: _pickImage,
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 20,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 36,
                    minHeight: 36,
                  ),
                ),
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 20),
        
        // Name Section
        _buildNameSection(),
      ],
    );
  }

  Widget _buildNameSection() {
    if (_isEditing) {
      return Column(
        children: [
          TextField(
            controller: _nameController,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppTheme.primaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppTheme.primaryColor, width: 2),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            maxLength: 30,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _saveName,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Save'),
              ),
              const SizedBox(width: 12),
              TextButton(
                onPressed: _cancelEditing,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.grey[600],
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: const Text('Cancel'),
              ),
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Text(
            _userName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          TextButton.icon(
            onPressed: _startEditing,
            icon: const Icon(Icons.edit, size: 16),
            label: const Text('Edit Name'),
            style: TextButton.styleFrom(
              foregroundColor: AppTheme.primaryColor,
            ),
          ),
        ],
      );
    }
  }

  Widget _buildProfileActions() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildActionTile(
            icon: Icons.info_outline,
            title: 'About Us',
            subtitle: 'Learn more about our company',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AboutUsScreen(),
                ),
              );
            },
          ),
          const Divider(),
          _buildActionTile(
            icon: Icons.privacy_tip_outlined,
            title: 'Privacy Policy',
            subtitle: 'Read our privacy policy',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PrivacyPolicyScreen(),
                ),
              );
            },
          ),
          const Divider(),
          _buildActionTile(
            icon: Icons.description_outlined,
            title: 'Terms of Service',
            subtitle: 'Read our terms of service',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TermsOfServiceScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActionTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppTheme.primaryColor.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: AppTheme.primaryColor,
          size: 24,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: AppTheme.textPrimaryColor,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: AppTheme.textSecondaryColor,
          fontSize: 12,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }



}
