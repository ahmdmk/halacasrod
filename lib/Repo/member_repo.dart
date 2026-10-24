
import 'package:flutter/foundation.dart';

import '../services/api_end_points.dart';
import '../services/network_api_service.dart';

class MemberRepo {

  final networkApiService = NetworkApiService();


  Future<dynamic> addMember({jsonBody})async{
    try {
      final response = await networkApiService.postResponse("https://halacasrod.com/api/members",jsonBody);

      print(response);

      if(response != null) {
        return response;
      }
      // else {
      //   return null;
      // }

    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

}
