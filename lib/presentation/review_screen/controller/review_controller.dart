import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/presentation/review_screen/models/review_model.dart';class ReviewController extends GetxController {Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
