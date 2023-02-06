import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';class EditProfileController extends GetxController {TextEditingController statusFillTypeDefaultController = TextEditingController();

TextEditingController statusFillTypeDefaultOneController = TextEditingController();

TextEditingController statusFillTypeNormalController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController statusFillTypeNormalOneController = TextEditingController();

TextEditingController genderController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusFillTypeDefaultController.dispose(); statusFillTypeDefaultOneController.dispose(); statusFillTypeNormalController.dispose(); emailController.dispose(); statusFillTypeNormalOneController.dispose(); genderController.dispose(); } 
 }
