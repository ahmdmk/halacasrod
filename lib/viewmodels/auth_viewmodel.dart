// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../models/auth.dart';
// import '../api/auth_service.dart';
// import '../services/providers.dart';
//
// enum AuthState {
//   initial,
//   loading,
//   authenticated,
//   unauthenticated,
//   error,
// }
//
// class AuthViewModel extends StateNotifier<AuthState> {
//   final AuthService _authService;
//   User? _currentUser;
//   String? _errorMessage;
//
//   AuthViewModel(this._authService) : super(AuthState.initial);
//
//   User? get currentUser => _currentUser;
//   String? get errorMessage => _errorMessage;
//
//   Future<void> checkAuthStatus() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('access_token');
//
//       if (token != null) {
//         state = AuthState.authenticated;
//       } else {
//         state = AuthState.unauthenticated;
//       }
//     } catch (e) {
//       state = AuthState.unauthenticated;
//     }
//   }
//
//   Future<bool> login(String username, String password) async {
//     state = AuthState.loading;
//
//     try {
//       final request = LoginRequest(username: username, password: password);
//       final response = await _authService.login(request);
//
//       // Store tokens
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setString('access_token', response.accessToken);
//       await prefs.setString('refresh_token', response.refreshToken);
//
//       _currentUser = response.user;
//       state = AuthState.authenticated;
//       return true;
//     } catch (e) {
//       _errorMessage = e.toString();
//       state = AuthState.error;
//       return false;
//     }
//   }
//
//   Future<bool> register(String username, String password) async {
//     state = AuthState.loading;
//
//     try {
//       final request = RegisterRequest(username: username, password: password, role: 'USER');
//       final response = await _authService.register(request);
//
//       // Store tokens
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setString('access_token', response.accessToken);
//       await prefs.setString('refresh_token', response.refreshToken);
//
//       _currentUser = response.user;
//       state = AuthState.authenticated;
//       return true;
//     } catch (e) {
//       _errorMessage = e.toString();
//       state = AuthState.error;
//       return false;
//     }
//   }
//
//   Future<void> logout() async {
//     try {
//       await _authService.logout();
//     } catch (e) {
//       // Continue with logout even if API call fails
//     }
//
//     // Clear local storage
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.clear();
//
//     _currentUser = null;
//     state = AuthState.unauthenticated;
//   }
//
//   void clearError() {
//     _errorMessage = null;
//     if (state == AuthState.error) {
//       state = AuthState.unauthenticated;
//     }
//   }
// }
//
// final authViewModelProvider = StateNotifierProvider<AuthViewModel, AuthState>((ref) {
//   final authService = ref.watch(authServiceProvider);
//   return AuthViewModel(authService);
// });