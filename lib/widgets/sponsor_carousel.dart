// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import '../utils/app_theme.dart';
// import '../viewmodels/sponsor_viewmodel.dart';
// import '../models/sponsor.dart';
//
// class SponsorCarousel extends HookConsumerWidget {
//   const SponsorCarousel({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final sponsorState = ref.watch(sponsorViewModelProvider);
//     // final sponsorViewModel = ref.read(sponsorViewModelProvider.notifier);
//
//     // Load sponsors on first build
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (sponsorState.sponsors.isEmpty && !sponsorState.isLoading) {
//         sponsorViewModel.loadSponsors();
//       }
//     });
//
//     if (sponsorState.isLoading && sponsorState.sponsors.isEmpty) {
//       return const SizedBox(
//         height: 200,
//         child: Center(child: CircularProgressIndicator()),
//       );
//     }
//
//     if (sponsorState.error != null) {
//       return const SizedBox(
//         height: 200,
//         child: Center(
//           child: Text(
//             'Failed to load sponsors',
//             style: TextStyle(color: AppTheme.white),
//           ),
//         ),
//       );
//     }
//
//     // if (sponsorState.sponsors.isEmpty) {
//     //   return const SizedBox.shrink();
//     // }
//
//     // return SizedBox(
//     //   height: 200,
//     //   child: PageView.builder(
//     //     itemCount: sponsorState.sponsors.length,
//     //     itemBuilder: (context, index) {
//     //       final sponsor = sponsorState.sponsors[index];
//     //       return _buildSponsorCard(sponsor);
//     //     },
//     //   ),
//     // );
//   }
//
//   Widget _buildSponsorCard(Sponsor sponsor) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(
//         color: AppTheme.cardBackground,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: AppTheme.cardShadow,
//       ),
//       child: Column(
//         children: [
//           Expanded(
//             child: Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16),
//               child: sponsor.logoUrl != null
//                   ? CachedNetworkImage(
//                       imageUrl: sponsor.logoUrl!,
//                       fit: BoxFit.contain,
//                       placeholder: (context, url) => const Center(
//                         child: CircularProgressIndicator(),
//                       ),
//                       errorWidget: (context, url, error) => const Center(
//                         child: Icon(Icons.image_not_supported),
//                       ),
//                     )
//                   : const Center(
//                       child: Icon(Icons.business, size: 64),
//                     ),
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(16),
//             decoration: const BoxDecoration(
//               color: AppTheme.white,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(16),
//                 bottomRight: Radius.circular(16),
//               ),
//             ),
//             child: Text(
//               sponsor.name,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: AppTheme.textDark,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }