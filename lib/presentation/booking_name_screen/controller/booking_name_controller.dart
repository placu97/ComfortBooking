import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/presentation/booking_name_screen/models/booking_name_model.dart';import 'package:flutter/material.dart';class BookingNameController extends GetxController {TextEditingController statusFillTypeDefaultController = TextEditingController();

TextEditingController statusFillTypeDefaultOneController = TextEditingController();

TextEditingController statusFillTypeNormalController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController frameTenController = TextEditingController();

Rx<BookingNameModel> bookingNameModelObj = BookingNameModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusFillTypeDefaultController.dispose(); statusFillTypeDefaultOneController.dispose(); statusFillTypeNormalController.dispose(); emailController.dispose(); frameTenController.dispose(); } 
 }
