// import '../models/sponsor.dart';
// import 'api_client.dart';
//
// class SponsorService {
//   final ApiClient _apiClient;
//
//   SponsorService(this._apiClient);
//
//   Future<List<Sponsor>> getSponsors() async {
//     try {
//       final response = await _apiClient.get('/sponsors');
//       final List<dynamic> data = response.data['data'] ?? response.data;
//       return data.map((json) => Sponsor.fromJson(json)).toList();
//     } catch (e) {
//       throw Exception('Failed to fetch sponsors: $e');
//     }
//   }
// }