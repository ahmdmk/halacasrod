import 'package:flutter/material.dart';
import '../../utils/app_theme.dart';

class BusinessesScreen extends StatelessWidget {
  const BusinessesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppTheme.primaryGradient,
        ),
        child: const SafeArea(
          child: Center(
            child: Text(
              'Businesses Screen\n(Implementation in progress)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: AppTheme.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}