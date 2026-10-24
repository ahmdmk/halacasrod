import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:hala_casrod_app/services/api_end_points.dart';
import '../services/network_api_service.dart';

class BusinessRepo {
  final networkApiService = NetworkApiService();

  Future<dynamic> addBusiness({jsonBody}) async {
    try {
      final response = await networkApiService.postResponse(
          ApiEndPoints.addBusiness, jsonBody);

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
