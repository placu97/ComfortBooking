import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/presentation/cancel_booking_bottomsheet/models/cancel_booking_model.dart';class CancelBookingController extends GetxController {Rx<CancelBookingModel> cancelBookingModelObj = CancelBookingModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
