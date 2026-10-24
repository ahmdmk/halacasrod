// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import '../../utils/app_theme.dart';
// import '../../viewmodels/auth_viewmodel.dart';
//
// class ProfileScreen extends HookConsumerWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final authViewModel = ref.read(authViewModelProvider.notifier);
//
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: AppTheme.primaryGradient,
//         ),
//         child: SafeArea(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   'Profile Screen\n(Implementation in progress)',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: AppTheme.white,
//                   ),
//                 ),
//                 const SizedBox(height: 40),
//                 ElevatedButton(
//                   onPressed: () async {
//                     await authViewModel.logout();
//                     if (context.mounted) {
//                       context.go('/welcome');
//                     }
//                   },
//                   child: const Text('Logout'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }