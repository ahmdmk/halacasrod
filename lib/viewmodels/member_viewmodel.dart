// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../models/member.dart';
// import '../api/member_service.dart';
// import '../services/providers.dart';
//
// class MemberListState {
//   final List<Member> members;
//   final bool isLoading;
//   final bool hasMore;
//   final String? error;
//   final String searchQuery;
//   final String? selectedDistrict;
//   final String? selectedProfession;
//
//   const MemberListState({
//     this.members = const [],
//     this.isLoading = false,
//     this.hasMore = true,
//     this.error,
//     this.searchQuery = '',
//     this.selectedDistrict,
//     this.selectedProfession,
//   });
//
//   MemberListState copyWith({
//     List<Member>? members,
//     bool? isLoading,
//     bool? hasMore,
//     String? error,
//     String? searchQuery,
//     String? selectedDistrict,
//     String? selectedProfession,
//   }) {
//     return MemberListState(
//       members: members ?? this.members,
//       isLoading: isLoading ?? this.isLoading,
//       hasMore: hasMore ?? this.hasMore,
//       error: error ?? this.error,
//       searchQuery: searchQuery ?? this.searchQuery,
//       selectedDistrict: selectedDistrict ?? this.selectedDistrict,
//       selectedProfession: selectedProfession ?? this.selectedProfession,
//     );
//   }
// }
//
// class MemberViewModel extends StateNotifier<MemberListState> {
//   final MemberService _memberService;
//   int _currentPage = 1;
//
//   MemberViewModel(this._memberService) : super(const MemberListState());
//
//   Future<void> loadMembers({bool refresh = false}) async {
//     if (state.isLoading) return;
//
//     if (refresh) {
//       _currentPage = 1;
//       state = state.copyWith(members: [], hasMore: true);
//     }
//
//     if (!state.hasMore && !refresh) return;
//
//     state = state.copyWith(isLoading: true, error: null);
//
//     try {
//       final members = await _memberService.getMembers(
//         page: _currentPage,
//         search: state.searchQuery.isEmpty ? null : state.searchQuery,
//         district: state.selectedDistrict,
//         profession: state.selectedProfession,
//       );
//
//       final newMembers = refresh ? members : [...state.members, ...members];
//
//       state = state.copyWith(
//         members: newMembers,
//         isLoading: false,
//         hasMore: members.length == 20, // Assuming 20 per page
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
//     loadMembers(refresh: true);
//   }
//
//   void filterByDistrict(String? district) {
//     state = state.copyWith(selectedDistrict: district);
//     loadMembers(refresh: true);
//   }
//
//   void filterByProfession(String? profession) {
//     state = state.copyWith(selectedProfession: profession);
//     loadMembers(refresh: true);
//   }
//
//   void clearFilters() {
//     state = state.copyWith(
//       searchQuery: '',
//       selectedDistrict: null,
//       selectedProfession: null,
//     );
//     loadMembers(refresh: true);
//   }
// }
//
// // final memberViewModelProvider = StateNotifierProvider<MemberViewModel, MemberListState>((ref) {
// //   final memberService = ref.watch(memberServiceProvider);
// //   return MemberViewModel(memberService);
// // });
// //
// // final memberDetailProvider = FutureProvider.family<Member, int>((ref, id) async {
// //   final memberService = ref.watch(memberServiceProvider);
// //   return await memberService.getMemberById(id);
// // });