import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/presentation/select_date_guest_screen/models/select_date_guest_model.dart';import 'package:flutter/material.dart';class SelectDateGuestController extends GetxController {TextEditingController decCounterController = TextEditingController();

TextEditingController decCounterOneController = TextEditingController();

Rx<SelectDateGuestModel> selectDateGuestModelObj = SelectDateGuestModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); decCounterController.dispose(); decCounterOneController.dispose(); } 
 }
