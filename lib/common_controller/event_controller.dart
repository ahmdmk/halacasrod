import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hala_casrod_app/Repo/event_repo.dart';
import 'package:hala_casrod_app/models/event_detail.dart';
import 'package:hala_casrod_app/models/up_coming_event_model.dart';

import '../utils/toast_message.dart';

class UpComingEventController extends GetxController {
  RxBool isLoading = false.obs;
  final eventRepo = EventRepo();

  UpComingEventModel? upComingEventModel;
  EventDetails? eventDetails;

  Future getUpComingEvent() async {
    isLoading.value = true;
    try {
      upComingEventModel = await eventRepo.fetchUpcomingEvent();


      if (upComingEventModel?.success == false) {
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


  Future getEventDetail({id}) async {
    isLoading.value = true;
    try {
      eventDetails = await eventRepo.eventDetail(id: id);

      log(eventDetails?.data?.description ?? "");
      if (eventDetails?.success == false) {
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
}
