





import 'package:flutter/foundation.dart';

import '../services/api_end_points.dart';
import '../services/network_api_service.dart';

class LoginRepo{


  final networkApiService = NetworkApiService();

  Future<dynamic> loginApi({jsonBody}) async {
    try {
      final response = await networkApiService.postResponse(
          ApiEndPoints.login, jsonBody);

      if (response != null) {
        return response;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

}