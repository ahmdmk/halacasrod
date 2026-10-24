// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../models/event.dart';
// import '../api/event_service.dart';
// import '../services/providers.dart';
//
// class EventListState {
//   final List<Event> events;
//   final bool isLoading;
//   final bool hasMore;
//   final String? error;
//   final String searchQuery;
//
//   const EventListState({
//     this.events = const [],
//     this.isLoading = false,
//     this.hasMore = true,
//     this.error,
//     this.searchQuery = '',
//   });
//
//   EventListState copyWith({
//     List<Event>? events,
//     bool? isLoading,
//     bool? hasMore,
//     String? error,
//     String? searchQuery,
//   }) {
//     return EventListState(
//       events: events ?? this.events,
//       isLoading: isLoading ?? this.isLoading,
//       hasMore: hasMore ?? this.hasMore,
//       error: error ?? this.error,
//       searchQuery: searchQuery ?? this.searchQuery,
//     );
//   }
// }
//
// class EventViewModel extends StateNotifier<EventListState> {
//   final EventService _eventService;
//   int _currentPage = 1;
//
//   EventViewModel(this._eventService) : super(const EventListState());
//
//   Future<void> loadEvents({bool refresh = false}) async {
//     if (state.isLoading) return;
//
//     if (refresh) {
//       _currentPage = 1;
//       state = state.copyWith(events: [], hasMore: true);
//     }
//
//     if (!state.hasMore && !refresh) return;
//
//     state = state.copyWith(isLoading: true, error: null);
//
//     try {
//       final events = await _eventService.getEvents(
//         page: _currentPage,
//         search: state.searchQuery.isEmpty ? null : state.searchQuery,
//       );
//
//       final newEvents = refresh ? events : [...state.events, ...events];
//
//       state = state.copyWith(
//         events: newEvents,
//         isLoading: false,
//         hasMore: events.length == 20,
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
//     loadEvents(refresh: true);
//   }
//
//   List<Event> get upcomingEvents {
//     final now = DateTime.now();
//     return state.events.where((event) => event.startDatetime.isAfter(now)).toList();
//   }
//
//   List<Event> get pastEvents {
//     final now = DateTime.now();
//     return state.events.where((event) => event.startDatetime.isBefore(now)).toList();
//   }
// }
//
// // final eventViewModelProvider = StateNotifierProvider<EventViewModel, EventListState>((ref) {
// //   final eventService = ref.watch(eventServiceProvider);
// //   return EventViewModel(eventService);
// // });
// //
// // final eventDetailProvider = FutureProvider.family<Event, int>((ref, id) async {
// //   final eventService = ref.watch(eventServiceProvider);
// //   return await eventService.getEventById(id);
// // });