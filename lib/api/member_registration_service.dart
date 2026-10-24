// import '../models/member_registration.dart';
// import '../models/member.dart';
// import 'api_client.dart';
//
// class MemberRegistrationService {
//   final ApiClient _apiClient;
//
//   MemberRegistrationService(this._apiClient);
//
//   Future<Member> createMemberProfile(MemberRegistrationRequest request) async {
//     try {
//       final response = await _apiClient.post('/members', data: request.toJson());
//       return Member.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to create member profile: $e');
//     }
//   }
// }