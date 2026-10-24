





import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hala_casrod_app/Repo/LoginRepo.dart';
import 'package:hala_casrod_app/views/auth/business_registration_screen.dart';

import '../utils/toast_message.dart';

class LoginController extends GetxController{

  RxBool isLoading = false.obs;

  final loginRepo = LoginRepo();


   Future login({required BuildContext context,
    userName,
    password
   })async{

     isLoading.value = true;

     Map<String, dynamic> data = {
       "username": userName,
       "password": password,

     };

     try {
       final response = await loginRepo.loginApi(jsonBody: data);

       if (response['success'] == true) {
         if (context.mounted) {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessRegistrationScreen()));
         }
         toastMessage(message: response['message'].toString());
       } else {
         toastMessage(message: response['message'].toString());
       }
     } catch (e) {
       if (kDebugMode) {
         print("$e");
       }

       toastMessage(message: e.toString());
     } finally {
       isLoading.value = false;
     }
   }

   }


