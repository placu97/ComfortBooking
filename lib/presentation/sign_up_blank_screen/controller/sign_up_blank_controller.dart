import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/presentation/sign_up_blank_screen/models/sign_up_blank_model.dart';import 'package:flutter/material.dart';class SignUpBlankController extends GetxController {TextEditingController passwordController = TextEditingController();

Rx<SignUpBlankModel> signUpBlankModelObj = SignUpBlankModel().obs;

RxBool checkbox = false.obs;

Rx<bool> isShowPassword = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); passwordController.dispose(); } 
 }
