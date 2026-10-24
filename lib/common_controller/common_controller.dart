



import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hala_casrod_app/api/api_client.dart';
import 'package:hala_casrod_app/services/api_end_points.dart';
import 'package:hala_casrod_app/services/network_api_service.dart';
import 'package:hala_casrod_app/utils/get_it.dart';

class CommonController extends GetxController{

  RxBool isLoading  = false.obs;

  Future<void> fetchToken() async {
    isLoading.value = true;

    try {
      final response = await NetworkApiService().postResponse(
        "https://halacasrod.com/api/auth/guest",
          "",

      );

      log(response.toString());
      if (response != null) {
        await getIt<CommonData>().setToken(token:  response['data']['accessToken']);
        // Handle response
      } else {
        print('Failed to fetch token: Response is null');
      }
    } catch (e, stackTrace) {
      if(kDebugMode){
        print('Error fetching token: $e');
        print('Stack trace: $stackTrace');
      }

    } finally {
      isLoading.value = false;
    }
  }




}