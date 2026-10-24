import 'package:flutter/foundation.dart';
import 'package:hala_casrod_app/models/up_coming_event_model.dart';

import '../models/event_detail.dart';
import '../models/sponsor_model.dart';
import '../services/api_end_points.dart';
import '../services/network_api_service.dart';

class EventRepo {
  final networkApiService = NetworkApiService();

  Future<UpComingEventModel?> fetchUpcomingEvent() async {
    try {
      final response =
          await networkApiService.getResponse(ApiEndPoints.getUpComingEvent);

      print(response);
      if (response != null) {
        return UpComingEventModel.fromJson(response);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
    return null;
  }

  Future<EventDetails?> eventDetail({id}) async {
    try {

      print("${ApiEndPoints.eventDetail}e4702101-4130-4137-a61e-7e555f391e91");
      final response = await networkApiService.getResponse("${ApiEndPoints.eventDetail}e4702101-4130-4137-a61e-7e555f391e91");

      print(response);
      if (response != null) {
        return EventDetails.fromJson(response);
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
