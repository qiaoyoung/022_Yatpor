import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            
            Text(
              'Privacy Policy',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.textPrimaryColor,
              ),
            ),
            
            const SizedBox(height: 8),
            
            Text(
              'Last updated: 2025-08',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppTheme.textSecondaryColor,
              ),
            ),
            
            const SizedBox(height: 24),
            
            _buildSection(
              context,
              '1. Information We Collect',
              'We collect information you provide directly to us, such as when you create an account, post content, or contact us. This includes your name, email address, profile information, and any content you share on the platform.',
            ),
            
            _buildSection(
              context,
              '2. Location Information',
              'With your permission, we may collect and process information about your actual location when you use location-based features such as route tracking and sharing ride locations. You can disable location services through your device settings.',
            ),
            
            _buildSection(
              context,
              '3. Device Information',
              'We collect information about the device you use to access Yatpor, including device type, operating system, unique device identifiers, and mobile network information to provide and improve our services.',
            ),
            
            _buildSection(
              context,
              '4. Usage Information',
              'We collect information about how you use Yatpor, including the features you use, the actions you take, and the time and duration of your activities. This helps us understand user behavior and improve the app.',
            ),
            
            _buildSection(
              context,
              '5. How We Use Your Information',
              'We use the information we collect to provide, maintain, and improve Yatpor services, including to personalize content, facilitate social interactions, ensure safety, and communicate with you about the service.',
            ),
            
            _buildSection(
              context,
              '6. Information Sharing',
              'We do not sell your personal information. We may share your information in certain limited circumstances, such as with your consent, to comply with legal obligations, or to protect the rights and safety of our users.',
            ),
            
            _buildSection(
              context,
              '7. Data Security',
              'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction. However, no internet transmission is completely secure.',
            ),
            
            _buildSection(
              context,
              '8. Data Retention',
              'We retain your information for as long as your account is active or as needed to provide services. We may retain certain information for legitimate business purposes or as required by law.',
            ),
            
            _buildSection(
              context,
              '9. Your Rights and Choices',
              'You have the right to access, update, or delete your personal information. You can manage your privacy settings within the app and control what information you share with other users.',
            ),
            
            _buildSection(
              context,
              '10. Children\'s Privacy',
              'Yatpor is not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If we become aware of such collection, we will take steps to delete the information.',
            ),
            
            _buildSection(
              context,
              '11. International Data Transfers',
              'Your information may be transferred to and processed in countries other than your own. We ensure appropriate safeguards are in place to protect your information during such transfers.',
            ),
            
            _buildSection(
              context,
              '12. Changes to Privacy Policy',
              'We may update this Privacy Policy from time to time. We will notify you of any material changes by posting the new policy on this page and updating the "Last updated" date.',
            ),
            
            _buildSection(
              context,
              '13. Contact Us',
              'If you have any questions about this Privacy Policy or our privacy practices, please contact us at privacy@yatpor.com',
            ),
            
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppTheme.textPrimaryColor,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
