import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/presentation/booking_completed_tab_container_screen/models/booking_completed_tab_container_model.dart';
import 'package:flutter/material.dart';

class BookingCompletedTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<BookingCompletedTabContainerModel> bookingCompletedTabContainerModelObj =
      BookingCompletedTabContainerModel().obs;

  late TabController group136Controller =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
