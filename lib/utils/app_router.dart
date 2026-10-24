import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../views/splash_screen.dart';
import '../views/welcome_screen.dart';
import '../views/auth/login_screen.dart';
import '../views/auth/personal_registration_screen.dart';
import '../views/auth/business_registration_screen.dart';
import '../views/home/main_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  SplashScreen(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) =>  WelcomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) =>  LoginScreen(),
    ),
    GoRoute(
      path: '/register/personal',
      builder: (context, state) =>  PersonalRegistrationScreen(),
    ),
    GoRoute(
      path: '/register/business',
      builder: (context, state) =>  BusinessRegistrationScreen(),
    ),
    // GoRoute(
    //   path: '/home',
    //   builder: (context, state) => const MainScreen(),
    // ),
    GoRoute(
      path: '/member/:id',
      builder: (context, state) {
        final id = int.tryParse(state.pathParameters['id'] ?? '0') ?? 0;
        return Scaffold(
          appBar: AppBar(title: const Text('Member Details')),
          body: Center(
            child: Text('Member Detail Screen for ID: $id\n(Coming Soon)'),
          ),
        );
      },
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text('Page not found'),
    ),
  ),
);