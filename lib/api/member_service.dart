// import '../models/member.dart';
// import 'api_client.dart';
//
// class MemberService {
//   final ApiClient _apiClient;
//
//   MemberService(this._apiClient);
//
//   Future<List<Member>> getMembers({
//     int page = 1,
//     int perPage = 20,
//     String? search,
//     String? district,
//     String? profession,
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
//       if (district != null && district.isNotEmpty) {
//         queryParams['district'] = district;
//       }
//       if (profession != null && profession.isNotEmpty) {
//         queryParams['profession'] = profession;
//       }
//
//       final response = await _apiClient.get('/members', queryParameters: queryParams);
//       final List<dynamic> data = response.data['data'] ?? response.data;
//       return data.map((json) => Member.fromJson(json)).toList();
//     } catch (e) {
//       throw Exception('Failed to fetch members: $e');
//     }
//   }
//
//   Future<Member> getMemberById(int id) async {
//     try {
//       final response = await _apiClient.get('/members/$id');
//       return Member.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to fetch member: $e');
//     }
//   }
//
//   Future<Member> createMember(Member member) async {
//     try {
//       final response = await _apiClient.post('/members', data: member.toJson());
//       return Member.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to create member: $e');
//     }
//   }
//
//   Future<Member> updateMember(int id, Member member) async {
//     try {
//       final response = await _apiClient.put('/members/$id', data: member.toJson());
//       return Member.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to update member: $e');
//     }
//   }
//
//   Future<void> deleteMember(int id) async {
//     try {
//       await _apiClient.delete('/members/$id');
//     } catch (e) {
//       throw Exception('Failed to delete member: $e');
//     }
//   }
// }