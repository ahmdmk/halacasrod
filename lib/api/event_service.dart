// import '../models/event.dart';
// import 'api_client.dart';
//
// class EventService {
//   final ApiClient _apiClient;
//
//   EventService(this._apiClient);
//
//   Future<List<Event>> getEvents({
//     int page = 1,
//     int perPage = 20,
//     String? search,
//   }) async {
//     try {
//       final queryParams = <String, dynamic>{
//         'page': page,
//         'per_page': perPage,
//       };
//
//       if (search != null && search.isNotEmpty) {
//         queryParams['search'] = search;
//       }
//
//       final response = await _apiClient.get('/events', queryParameters: queryParams);
//       final List<dynamic> data = response.data['data'] ?? response.data;
//       return data.map((json) => Event.fromJson(json)).toList();
//     } catch (e) {
//       throw Exception('Failed to fetch events: $e');
//     }
//   }
//
//   Future<Event> getEventById(int id) async {
//     try {
//       final response = await _apiClient.get('/events/$id');
//       return Event.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to fetch event: $e');
//     }
//   }
//
//   Future<Event> createEvent(Event event) async {
//     try {
//       final response = await _apiClient.post('/events', data: event.toJson());
//       return Event.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to create event: $e');
//     }
//   }
//
//   Future<Event> updateEvent(int id, Event event) async {
//     try {
//       final response = await _apiClient.put('/events/$id', data: event.toJson());
//       return Event.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to update event: $e');
//     }
//   }
//
//   Future<void> deleteEvent(int id) async {
//     try {
//       await _apiClient.delete('/events/$id');
//     } catch (e) {
//       throw Exception('Failed to delete event: $e');
//     }
//   }
// }