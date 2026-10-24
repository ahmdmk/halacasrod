import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  static const String baseUrl = 'https://halacasrod.com/api';
  late Dio dio;

  ApiClient._internal() {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final prefs = await SharedPreferences.getInstance();
        final token = prefs.getString('access_token');
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          await _refreshToken();
          handler.next(error);
        } else {
          handler.next(error);
        }
      },
    ));


  }

  static final ApiClient _instance = ApiClient._internal();
  static Dio get dioInstance => _instance.dio;



  Future<void> _refreshToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final refreshToken = prefs.getString('refresh_token');

      if (refreshToken != null) {
        final response = await dio.post('/auth/refresh', data: {
          'refresh_token': refreshToken,
        });

        if (response.statusCode == 200) {
          final data = response.data;
          await prefs.setString('access_token', data['access_token']);
          await prefs.setString('refresh_token', data['refresh_token']);
        }
      }
    } catch (e) {
      // Refresh failed, redirect to login
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
    }
  }
  //
  // Future<Response<T>> get<T>(String path, {Map<String, dynamic>? queryParameters}) {
  //   return _dio.get<T>(path, queryParameters: queryParameters);
  // }
  //
  // Future<Response<T>> post<T>(String path, {dynamic data}) {
  //   return _dio.post<T>(path, data: data);
  // }
  //
  // Future<Response<T>> put<T>(String path, {dynamic data}) {
  //   return _dio.put<T>(path, data: data);
  // }
  //
  // Future<Response<T>> delete<T>(String path) {
  //   return _dio.delete<T>(path);
  // }

  // void setAuthToken(String token) {
  //   _dio.options.headers['Authorization'] = 'Bearer $token';
  // }
  //
  // void clearAuthToken() {
  //   _dio.options.headers.remove('Authorization');
  // }
}