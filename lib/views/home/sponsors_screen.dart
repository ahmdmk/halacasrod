import 'package:flutter/material.dart';
import '../../utils/app_theme.dart';

class SponsorsScreen extends StatelessWidget {
  const SponsorsScreen({super.key});

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
              'Sponsors Screen\n(Implementation in progress)',
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