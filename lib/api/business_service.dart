// import '../models/business.dart';
// import '../models/business_registration.dart';
// import 'api_client.dart';
//
// class BusinessService {
//   final ApiClient _apiClient;
//
//   BusinessService(this._apiClient);
//
//   Future<List<Business>> getBusinesses({
//     int page = 1,
//     int perPage = 20,
//     String? search,
//     String? industry,
//     String? emirate,
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
//       if (industry != null && industry.isNotEmpty) {
//         queryParams['industry'] = industry;
//       }
//       if (emirate != null && emirate.isNotEmpty) {
//         queryParams['emirate'] = emirate;
//       }
//
//       final response = await _apiClient.get('/businesses', queryParameters: queryParams);
//       final List<dynamic> data = response.data['data'] ?? response.data;
//       return data.map((json) => Business.fromJson(json)).toList();
//     } catch (e) {
//       throw Exception('Failed to fetch businesses: $e');
//     }
//   }
//
//   Future<Business> getBusinessById(int id) async {
//     try {
//       final response = await _apiClient.get('/businesses/$id');
//       return Business.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to fetch business: $e');
//     }
//   }
//
//   Future<Business> createBusiness(Business business) async {
//     try {
//       final response = await _apiClient.post('/businesses', data: business.toJson());
//       return Business.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to create business: $e');
//     }
//   }
//
//   Future<Business> createBusinessRegistration(BusinessRegistrationRequest request) async {
//     try {
//       final response = await _apiClient.post('/businesses', data: request.toJson());
//       return Business.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to create business registration: $e');
//     }
//   }
//
//   Future<Business> updateBusiness(int id, Business business) async {
//     try {
//       final response = await _apiClient.put('/businesses/$id', data: business.toJson());
//       return Business.fromJson(response.data);
//     } catch (e) {
//       throw Exception('Failed to update business: $e');
//     }
//   }
//
//   Future<void> deleteBusiness(int id) async {
//     try {
//       await _apiClient.delete('/businesses/$id');
//     } catch (e) {
//       throw Exception('Failed to delete business: $e');
//     }
//   }
// }