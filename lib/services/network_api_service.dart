import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import '../utils/get_it.dart';
import '../utils/shared_preferance.dart';
import 'Models/error_model.dart';
import 'base_api_services.dart';
import 'dio_client.dart';

class NetworkApiService extends BaseApiService {



  @override
  Future getResponse(String url,{Map<String,dynamic>? queryParameter}) async {

    String? token =  getIt<CommonData>().token;


    try {
      final response = await dio.get(
          url,
          queryParameters : queryParameter,
          options: token != null ? Options(
          contentType: 'application/json; charset=UTF-8',
          headers: {'Authorization': "Bearer $token"}
      ): null
      );
      return returnResponse(response);
    } on DioException catch (error) {
      print(error);
      return {
        "success": error.response?.data["success"],
        "data": error.response?.data["data"],
         "message":error.response?.data["message"]

      };
    }
  }

  @override
  Future postResponse(String url, dynamic  jsonBody, {Options? options}) async {

    String? token =  getIt<CommonData>().token;

    try {
      final response = await dio.post(url, data: jsonBody, options: token != null ?
      Options(
          contentType: 'application/json; charset=UTF-8',
          headers: {'Authorization': "Bearer $token"}):null
      );

      return returnResponse(response);
    } on DioException catch (error) {
      return {
        "success": error.response?.data["success"],
        "data": error.response?.data["data"],
        "message":error.response?.data["message"]


      };
    }
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
         CommonModel commonModel = CommonModel.fromJson(response.data);
        return {
          "success": commonModel.success,
          "data": commonModel.data,
          "message" : commonModel.message
        };
        case 201:
        CommonModel commonModel = CommonModel.fromJson(response.data);
        return {
          "success": commonModel.success,
          "data": commonModel.data,
          "message" : commonModel.message
        };
    }
  }

  // @override
  // Future putResponse(String url, jsonBody) async {
  //
  //   String? token = await getAuthToken();
  //
  //   try {
  //     final response = await dio.put(url, data: jsonBody,options: token != null?
  //     Options(
  //         contentType: 'application/json; charset=UTF-8',
  //         headers: {'Authorization': "Bearer $token"}
  //     ):null
  //     );
  //     return returnResponse(response);
  //   } on DioException catch (error) {
  //     return {
  //       "error": error.response?.data["error"],
  //       "message": error.response?.data["message"],
  //       "data": error.response?.data["data"],
  //       "meta":error.response?.data["meta"]
  //
  //
  //     };
  //   }
  // }
  //
  // @override
  // Future deleteResponse(String url)async {
  //
  //
  //   String? token = await getAuthToken();
  //
  //   try{
  //     final response = await dio.delete(url,options: token != null?
  //     Options(
  //         contentType: 'application/json; charset=UTF-8',
  //         headers: {'Authorization': "Bearer $token"}
  //     ):null
  //     );
  //     return returnResponse(response);
  //   }on DioException catch (error) {
  //     return {
  //       "error": error.response?.data["error"],
  //       "message": error.response?.data["message"],
  //       "data": error.response?.data["data"],
  //       "meta":error.response?.data["meta"]
  //     };
  //   }
  //
  // }

  Future<String?> getAuthToken() async {
    return await getIt<SecureStorageService>().getString(key: getIt<SecureStorageService>().accessToken);
  }
}
