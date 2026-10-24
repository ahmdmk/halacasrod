// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../utils/app_theme.dart';
// import 'members_screen.dart';
// import 'businesses_screen.dart';
// import 'events_screen.dart';
// import 'sponsors_screen.dart';
// import 'profile_screen.dart';
//
// class MainScreen extends HookConsumerWidget {
//   const MainScreen({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final currentIndex = useState(0);
//
//     final screens = [
//       const MembersScreen(),
//       const BusinessesScreen(),
//       const EventsScreen(),
//       const SponsorsScreen(),
//       const ProfileScreen(),
//     ];
//
//     return Scaffold(
//       body: screens[currentIndex.value],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: currentIndex.value,
//         onTap: (index) => currentIndex.value = index,
//         backgroundColor: AppTheme.primaryBlue,
//         selectedItemColor: AppTheme.white,
//         unselectedItemColor: AppTheme.white.withValues(alpha: 0.7),
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             label: 'Members',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.event),
//             label: 'Events',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star),
//             label: 'Sponsors',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }