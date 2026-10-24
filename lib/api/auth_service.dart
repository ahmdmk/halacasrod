import '../models/auth.dart';
import 'api_client.dart';

class AuthService {
  final ApiClient _apiClient;

  AuthService(this._apiClient);

  // Future<AuthResponse> login(LoginRequest request) async {
  //   try {
  //     final response = await _apiClient.post('/auth/login', data: request.toJson());
  //     return AuthResponse.fromJson(response.data);
  //   } catch (e) {
  //     throw Exception('Login failed: $e');
  //   }
  // }

  // Future<AuthResponse> register(RegisterRequest request) async {
  //   try {
  //     final response = await _apiClient.post('/auth/register', data: request.toJson());
  //     return AuthResponse.fromJson(response.data);
  //   } catch (e) {
  //     throw Exception('Registration failed: $e');
  //   }
  }

  // Future<void> logout() async {
  //   try {
  //     await _apiClient.post('/auth/logout');
  //   } catch (e) {
  //     // Continue with logout even if API call fails
  //   }
  // }

  // Future<AuthResponse> refreshToken(String refreshToken) async {
  //   try {
  //     final response = await _apiClient.post('/auth/refresh', data: {
  //       'refresh_token': refreshToken,
  //     });
  //     return AuthResponse.fromJson(response.data);
  //   } catch (e) {
  //     throw Exception('Token refresh failed: $e');
  //   }
  // }
//}