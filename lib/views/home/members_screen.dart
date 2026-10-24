// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import '../../utils/app_theme.dart';
// import '../../viewmodels/member_viewmodel.dart';
// import '../../widgets/member_card.dart';
// import '../../widgets/search_bar_widget.dart';
//
// class MembersScreen extends HookConsumerWidget {
//   const MembersScreen({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final memberState = ref.watch(memberViewModelProvider);
//     // final memberViewModel = ref.read(memberViewModelProvider.notifier);
//     final scrollController = useScrollController();
//
//     // useEffect(() {
//     //   memberViewModel.loadMembers();
//     //
//     //   void onScroll() {
//     //     if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200) {
//     //       memberViewModel.loadMembers();
//     //     }
//     //   }
//     //
//     //   scrollController.addListener(onScroll);
//     //   return () => scrollController.removeListener(onScroll);
//     // }, []);
//
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: AppTheme.primaryGradient,
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               // Header
//               Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Row(
//                   children: [
//                     const Text(
//                       'Hala Casrod',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: AppTheme.white,
//                       ),
//                     ),
//                     const Spacer(),
//                     Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//                       decoration: BoxDecoration(
//                         color: AppTheme.white.withValues(alpha: 0.2),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Text(
//                         '${memberState.members.length}+ Members',
//                         style: const TextStyle(
//                           color: AppTheme.white,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     IconButton(
//                       onPressed: () {
//                         // WhatsApp functionality
//                       },
//                       icon: const Icon(Icons.message, color: AppTheme.green),
//                     ),
//                   ],
//                 ),
//               ),
//               // Title
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Registered Members',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: AppTheme.white,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               // Search bar
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: SearchBarWidget(
//                   onSearch: memberViewModel.search,
//                   onFilter: () => _showFilterDialog(context, ref),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               // Members list
//               Expanded(
//                 child: Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   decoration: const BoxDecoration(
//                     color: AppTheme.cardBackground,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20),
//                     ),
//                   ),
//                   child: RefreshIndicator(
//                     onRefresh: () async {
//                       await memberViewModel.loadMembers(refresh: true);
//                     },
//                     child: memberState.members.isEmpty && !memberState.isLoading
//                         ? const Center(
//                             child: Text(
//                               'No members found',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: AppTheme.textGray,
//                               ),
//                             ),
//                           )
//                         : ListView.builder(
//                             controller: scrollController,
//                             padding: const EdgeInsets.all(16),
//                             itemCount: memberState.members.length + (memberState.isLoading ? 1 : 0),
//                             itemBuilder: (context, index) {
//                               if (index == memberState.members.length) {
//                                 return const Center(
//                                   child: Padding(
//                                     padding: EdgeInsets.all(16),
//                                     child: CircularProgressIndicator(),
//                                   ),
//                                 );
//                               }
//
//                               final member = memberState.members[index];
//                               return MemberCard(
//                                 member: member,
//                                 onTap: () => context.push('/member/${member.id}'),
//                               );
//                             },
//                           ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _showFilterDialog(BuildContext context, WidgetRef ref) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Filter Members'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               title: const Text('By District'),
//               onTap: () {
//                 Navigator.pop(context);
//                 _showDistrictFilter(context, ref);
//               },
//             ),
//             ListTile(
//               title: const Text('By Profession'),
//               onTap: () {
//                 Navigator.pop(context);
//                 _showProfessionFilter(context, ref);
//               },
//             ),
//             ListTile(
//               title: const Text('Clear Filters'),
//               onTap: () {
//                 ref.read(memberViewModelProvider.notifier).clearFilters();
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _showDistrictFilter(BuildContext context, WidgetRef ref) {
//     final districts = ['Kasaragod', 'Uppala', 'Kanhangad', 'Nileshwar', 'Manjeshwar'];
//
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Select District'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: districts
//               .map((district) => ListTile(
//                     title: Text(district),
//                     onTap: () {
//                       ref.read(memberViewModelProvider.notifier).filterByDistrict(district);
//                       Navigator.pop(context);
//                     },
//                   ))
//               .toList(),
//         ),
//       ),
//     );
//   }
//
//   void _showProfessionFilter(BuildContext context, WidgetRef ref) {
//     final professions = ['Doctor', 'Engineer', 'Teacher', 'Business', 'Chef', 'Driver'];
//
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Select Profession'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: professions
//               .map((profession) => ListTile(
//                     title: Text(profession),
//                     onTap: () {
//                       ref.read(memberViewModelProvider.notifier).filterByProfession(profession);
//                       Navigator.pop(context);
//                     },
//                   ))
//               .toList(),
//         ),
//       ),
//     );
//   }
// }