import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            
            // Logo Section
            _buildLogoSection(),
            
            const SizedBox(height: 40),
            
            // App Info Section
            _buildAppInfoSection(),
            
            const SizedBox(height: 40),
            
            // Company Info Section
            _buildCompanyInfoSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoSection() {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppTheme.primaryColor.withValues(alpha: 0.3),
                blurRadius: 20,
                spreadRadius: 5,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/yatpor_about_icon.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: AppTheme.primaryColor,
                  child: const Icon(
                    Icons.image,
                    size: 60,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
        ),
        
        const SizedBox(height: 20),
        
        Text(
          'Yatpor',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryColor,
            letterSpacing: 1.2,
          ),
        ),
        
        const SizedBox(height: 8),
        
        Text(
          'Motorcycle Community App',
          style: TextStyle(
            fontSize: 16,
            color: AppTheme.textSecondaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildAppInfoSection() {
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
          _buildInfoRow('App Name', 'Yatpor'),
          const Divider(),
          _buildInfoRow('Version', '1.0.0'),
        ],
      ),
    );
  }

  Widget _buildCompanyInfoSection() {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About Yatpor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          
          const SizedBox(height: 16),
          
          const Text(
            'Yatpor is a comprehensive motorcycle community application designed to connect riders, share experiences, and explore the world of motorcycling together.',
            style: TextStyle(
              fontSize: 16,
              color: AppTheme.textSecondaryColor,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyle(
                color: AppTheme.textSecondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(
                color: AppTheme.textPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: AppTheme.primaryColor,
            size: 20,
          ),
          const SizedBox(width: 12),
          Text(
            feature,
            style: const TextStyle(
              fontSize: 16,
              color: AppTheme.textPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
