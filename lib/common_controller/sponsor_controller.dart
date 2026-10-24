import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hala_casrod_app/Repo/sponsor_repo.dart';
import 'package:hala_casrod_app/models/sponsor_model.dart';
import 'package:hala_casrod_app/utils/toast_message.dart';

class SponsorController extends GetxController {
  RxBool isLoading = false.obs;

  RxBool isSlider = false.obs;


  final sponsorRepo = SponsorRepo();

  SponsorModel? sponsorModel;
  SponsorModel? sliderModel;



  Future fetchAllSponsorList() async {
    isLoading.value = true;

    try {
      sponsorModel = await sponsorRepo.fetchAllSponsor();


      print(sponsorModel);

      if (sponsorModel?.success == false) {
        toastMessage(message: "Something went wrong");
      }
    } catch (e) {
      if (kDebugMode) {
        print("$e");
      }
    } finally {
      isLoading.value = false;
    }
  }


  Future fetchAllSliderList() async {
    isSlider.value = true;

    try {
      sliderModel = await sponsorRepo.fetchAllSlider();

      if (sliderModel?.success == false) {
        toastMessage(message: "Something went wrong");
      }
    } catch (e) {
      if (kDebugMode) {
        print("$e");
      }
    } finally {
      isSlider.value = false;
    }
  }
}
