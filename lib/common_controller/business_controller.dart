import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hala_casrod_app/views/welcome_screen.dart';

import '../Repo/business_repo.dart';
import '../utils/toast_message.dart';
import '../views/auth/business_registration_screen.dart';

class BusinessController extends GetxController {
  RxBool isLoading = false.obs;

  final businessRepo = BusinessRepo();

  final businessName = TextEditingController();
  final industry = TextEditingController();
  final mobileNumber = TextEditingController();
  final emirate = TextEditingController();
  final website = TextEditingController();
  // final address = TextEditingController();
  // final contactEmail = TextEditingController();

  Future addBusiness({value, emirates, required BuildContext context}) async {
    isLoading.value = true;

    Map<String, dynamic> data = {
      "business_name": businessName.text,
      "industry": value.toString().toUpperCase(),
      "mobile_number": mobileNumber.text,
      "emirate": emirates,
      "website": website.text,
      "address": "NA",
      "contact_email": "Ahmdmk@gmail.com"
    };

    try {
      final response = await businessRepo.addBusiness(jsonBody: data);

      if (response['success'] == true) {
        if (context.mounted) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
        }
        toastMessage(message: "Thank you! Registration successfully done!");
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
