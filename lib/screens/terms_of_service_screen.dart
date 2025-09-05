import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Terms of Service'),
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
              'Terms of Service',
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
              '1. Acceptance of Terms',
              'By accessing and using Yatpor ("the App"), you accept and agree to be bound by the terms and provision of this agreement. If you do not agree to abide by the above, please do not use this service.',
            ),
            
            _buildSection(
              context,
              '2. Description of Service',
              'Yatpor is a social platform designed for motorcycle enthusiasts to share riding experiences, discover routes, connect with fellow riders, and track their adventures. The service includes features such as posting ride content, messaging, route discovery, and community interaction.',
            ),
            
            _buildSection(
              context,
              '3. User Accounts',
              'You are responsible for maintaining the confidentiality of your account and password. You agree to accept responsibility for all activities that occur under your account. You must notify us immediately of any unauthorized use of your account.',
            ),
            
            _buildSection(
              context,
              '4. User Content and Conduct',
              'You are solely responsible for the content you post on Yatpor. You agree not to post content that is illegal, harmful, threatening, abusive, defamatory, or otherwise objectionable. We reserve the right to remove any content that violates these terms.',
            ),
            
            _buildSection(
              context,
              '5. Riding Safety',
              'Yatpor promotes safe riding practices. Users are encouraged to follow all traffic laws and safety regulations. The App is not responsible for any accidents or incidents that may occur during rides shared or discovered through the platform.',
            ),
            
            _buildSection(
              context,
              '6. Privacy and Data Protection',
              'Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and protect your information. By using Yatpor, you consent to the collection and use of your data as outlined in our Privacy Policy.',
            ),
            
            _buildSection(
              context,
              '7. Intellectual Property',
              'The Yatpor app, including its design, features, and content, is protected by copyright and other intellectual property laws. Users retain rights to their own content but grant Yatpor a license to use, display, and distribute user-generated content within the platform.',
            ),
            
            _buildSection(
              context,
              '8. Prohibited Uses',
              'You may not use Yatpor for any illegal or unauthorized purpose. You agree to comply with all local, state, national, and international laws and regulations. Prohibited activities include but are not limited to spamming, harassment, and distributing malicious software.',
            ),
            
            _buildSection(
              context,
              '9. Termination',
              'We may terminate or suspend your account and access to the service immediately, without prior notice or liability, for any reason, including if you breach the Terms of Service. Upon termination, your right to use the service will cease immediately.',
            ),
            
            _buildSection(
              context,
              '10. Limitation of Liability',
              'In no event shall Yatpor be liable for any indirect, incidental, special, consequential, or punitive damages, including without limitation, loss of profits, data, use, goodwill, or other intangible losses.',
            ),
            
            _buildSection(
              context,
              '11. Changes to Terms',
              'We reserve the right to modify or replace these Terms of Service at any time. If a revision is material, we will try to provide at least 30 days notice prior to any new terms taking effect.',
            ),
            
            _buildSection(
              context,
              '12. Contact Information',
              'If you have any questions about these Terms of Service, please contact us at support@yatpor.com',
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
