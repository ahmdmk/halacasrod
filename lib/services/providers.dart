// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../api/api_client.dart';
// import '../api/auth_service.dart';
// import '../api/member_service.dart';
// import '../api/member_registration_service.dart';
// import '../api/business_service.dart';
// import '../api/event_service.dart';
// import '../api/sponsor_service.dart';
//
// // API Client Provider
// // final apiClientProvider = Provider<ApiClient>((ref) {
// //
// //   //return ApiClient();
// // });
//
// // Service Providers
// final authServiceProvider = Provider<AuthService>((ref) {
//   final apiClient = ref.watch(apiClientProvider);
//   return AuthService(apiClient);
// });
//
// final memberServiceProvider = Provider<MemberService>((ref) {
//   final apiClient = ref.watch(apiClientProvider);
//   return MemberService(apiClient);
// });
//
// final businessServiceProvider = Provider<BusinessService>((ref) {
//   final apiClient = ref.watch(apiClientProvider);
//   return BusinessService(apiClient);
// });
//
// final eventServiceProvider = Provider<EventService>((ref) {
//   final apiClient = ref.watch(apiClientProvider);
//   return EventService(apiClient);
// });
//
// final sponsorServiceProvider = Provider<SponsorService>((ref) {
//   final apiClient = ref.watch(apiClientProvider);
//   return SponsorService(apiClient);
// });
//
// final memberRegistrationServiceProvider = Provider<MemberRegistrationService>((ref) {
//   final apiClient = ref.watch(apiClientProvider);
//   return MemberRegistrationService(apiClient);
// });