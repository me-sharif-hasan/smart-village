import 'package:flutter/material.dart';
import '../../../../shared/themes/app_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('লগইন'), // Login
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 64,
              color: AppTheme.primaryGreen,
            ),
            SizedBox(height: 16),
            Text(
              'লগইন সিস্টেম শীঘ্রই আসছে', // Login system coming soon
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
