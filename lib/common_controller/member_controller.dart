import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hala_casrod_app/Repo/member_repo.dart';
import 'package:hala_casrod_app/utils/toast_message.dart';

class MemberController extends GetxController {
  RxBool isLoading = false.obs;
  final memberRepo = MemberRepo();

  final nameController = TextEditingController();
  final professionController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final howManYearOfGulf = TextEditingController();
  final nativePlace = TextEditingController();
  final companyName = TextEditingController();
  final currentLocation = TextEditingController();
  final whatsAppNumber = TextEditingController();
  final email = TextEditingController();
  final countryOfResident = TextEditingController();







  Future<void> memberRegistration({value,mobileCoCode,whatsAppCode,
  countryOfResidence,
    nativeDistrict,
    required BuildContext context

  }) async {
    isLoading.value = true;

    Map<String, dynamic> data = {
      "name": nameController.text,
      "profession": professionController.text.isEmpty ? "NA": professionController.text,
      "mobile_country_code": mobileCoCode,
      "mobile_number": mobileNumberController.text,
      "whatsapp_country_code": whatsAppCode,
      "whatsapp_number": mobileNumberController.text,
      "email": email.text.isEmpty ? "NA@gamil.com" : email.text,
      "additional_details": "",
      "company_name": companyName.text.isEmpty ? "NA" : companyName.text,
      "country_of_residence": countryOfResidence,
      "current_location": currentLocation.text.isEmpty ? "NA" :  currentLocation.text,
      "native_district": nativeDistrict,
      "native_panchayat": "Other",
      "years_in_gulf": int.parse(howManYearOfGulf.text.isEmpty ? "1" : howManYearOfGulf.text),
      "attending_event": value.toString().toUpperCase()
    };

    try {
      final response = await memberRepo.addMember(jsonBody: data);

      log("response---->${response}");

      if (response['success'] == true) {
        if(context.mounted){
          GoRouter.of(context).pop();
        }
        toastMessage(message: "Thank you! Registration successfully done!");
      }else{
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
