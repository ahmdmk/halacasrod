// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../models/business.dart';
// import '../api/business_service.dart';
// import '../services/providers.dart';
//
// class BusinessListState {
//   final List<Business> businesses;
//   final bool isLoading;
//   final bool hasMore;
//   final String? error;
//   final String searchQuery;
//   final String? selectedIndustry;
//   final String? selectedEmirate;
//
//   const BusinessListState({
//     this.businesses = const [],
//     this.isLoading = false,
//     this.hasMore = true,
//     this.error,
//     this.searchQuery = '',
//     this.selectedIndustry,
//     this.selectedEmirate,
//   });
//
//   BusinessListState copyWith({
//     List<Business>? businesses,
//     bool? isLoading,
//     bool? hasMore,
//     String? error,
//     String? searchQuery,
//     String? selectedIndustry,
//     String? selectedEmirate,
//   }) {
//     return BusinessListState(
//       businesses: businesses ?? this.businesses,
//       isLoading: isLoading ?? this.isLoading,
//       hasMore: hasMore ?? this.hasMore,
//       error: error ?? this.error,
//       searchQuery: searchQuery ?? this.searchQuery,
//       selectedIndustry: selectedIndustry ?? this.selectedIndustry,
//       selectedEmirate: selectedEmirate ?? this.selectedEmirate,
//     );
//   }
// }
//
// class BusinessViewModel extends StateNotifier<BusinessListState> {
//   // final BusinessService _businessService;
//   int _currentPage = 1;
//
//   BusinessViewModel(
//       //this._businessService
//       ) : super(const BusinessListState());
//
//   Future<void> loadBusinesses({bool refresh = false}) async {
//     if (state.isLoading) return;
//
//     if (refresh) {
//       _currentPage = 1;
//       state = state.copyWith(businesses: [], hasMore: true);
//     }
//
//     if (!state.hasMore && !refresh) return;
//
//     state = state.copyWith(isLoading: true, error: null);
//
//     try {
//       // final businesses = await _businessService.getBusinesses(
//       //   page: _currentPage,
//       //   search: state.searchQuery.isEmpty ? null : state.searchQuery,
//       //   industry: state.selectedIndustry,
//       //   emirate: state.selectedEmirate,
//       // );
//
//       final newBusinesses = refresh ? businesses : [...state.businesses, ...businesses];
//
//       state = state.copyWith(
//         businesses: newBusinesses,
//         isLoading: false,
//         hasMore: businesses.length == 20,
//       );
//
//       _currentPage++;
//     } catch (e) {
//       state = state.copyWith(
//         isLoading: false,
//         error: e.toString(),
//       );
//     }
//   }
//
//   void search(String query) {
//     state = state.copyWith(searchQuery: query);
//     loadBusinesses(refresh: true);
//   }
//
//   void filterByIndustry(String? industry) {
//     state = state.copyWith(selectedIndustry: industry);
//     loadBusinesses(refresh: true);
//   }
//
//   void filterByEmirate(String? emirate) {
//     state = state.copyWith(selectedEmirate: emirate);
//     loadBusinesses(refresh: true);
//   }
//
//   void clearFilters() {
//     state = state.copyWith(
//       searchQuery: '',
//       selectedIndustry: null,
//       selectedEmirate: null,
//     );
//     loadBusinesses(refresh: true);
//   }
// }
//
// // final businessViewModelProvider = StateNotifierProvider<BusinessViewModel, BusinessListState>((ref) {
// //   // final businessService = ref.watch(businessServiceProvider);
// //   return BusinessViewModel(businessService);
// // });
//
// // final businessDetailProvider = FutureProvider.family<Business, int>((ref, id) async {
// //   final businessService = ref.watch(businessServiceProvider);
// //   return await businessService.getBusinessById(id);
// //});