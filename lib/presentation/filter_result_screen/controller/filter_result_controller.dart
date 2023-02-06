import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/presentation/filter_result_screen/models/filter_result_model.dart';import 'package:comfort_booking/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class FilterResultController extends GetxController {TextEditingController searchBarController = TextEditingController();

Rx<FilterResultModel> filterResultModelObj = FilterResultModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchBarController.dispose(); } 
 }
