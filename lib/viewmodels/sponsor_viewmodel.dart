// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../models/sponsor.dart';
// import '../api/sponsor_service.dart';
// import '../services/providers.dart';
//
// class SponsorListState {
//   final List<Sponsor> sponsors;
//   final bool isLoading;
//   final String? error;
//
//   const SponsorListState({
//     this.sponsors = const [],
//     this.isLoading = false,
//     this.error,
//   });
//
//   SponsorListState copyWith({
//     List<Sponsor>? sponsors,
//     bool? isLoading,
//     String? error,
//   }) {
//     return SponsorListState(
//       sponsors: sponsors ?? this.sponsors,
//       isLoading: isLoading ?? this.isLoading,
//       error: error ?? this.error,
//     );
//   }
// }
//
// class SponsorViewModel extends StateNotifier<SponsorListState> {
//   final SponsorService _sponsorService;
//
//   SponsorViewModel(this._sponsorService) : super(const SponsorListState());
//
//   Future<void> loadSponsors() async {
//     if (state.isLoading) return;
//
//     state = state.copyWith(isLoading: true, error: null);
//
//     try {
//       final sponsors = await _sponsorService.getSponsors();
//
//       // Sort by sort_order
//       sponsors.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
//
//       state = state.copyWith(
//         sponsors: sponsors,
//         isLoading: false,
//       );
//     } catch (e) {
//       state = state.copyWith(
//         isLoading: false,
//         error: e.toString(),
//       );
//     }
//   }
// }
//
// // final sponsorViewModelProvider = StateNotifierProvider<SponsorViewModel, SponsorListState>((ref) {
// //   final sponsorService = ref.watch(sponsorServiceProvider);
// //   return SponsorViewModel(sponsorService);
// // });