



import 'package:flutter/foundation.dart';

import '../models/sponsor_model.dart';
import '../services/api_end_points.dart';
import '../services/network_api_service.dart';

class SponsorRepo{


  final networkApiService = NetworkApiService();

  Future<SponsorModel?> fetchAllSponsor() async {
    try {

      final response = await networkApiService.getResponse(ApiEndPoints.getSponsor);

      print(response);
      if (response != null) {
        return SponsorModel.fromJson(response);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
    return null;
  }
Future<SponsorModel?> fetchAllSlider() async {
    try {

      final response = await networkApiService.getResponse(ApiEndPoints.slider);

      if (response != null) {
        return SponsorModel.fromJson(response);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
    return null;
  }



}