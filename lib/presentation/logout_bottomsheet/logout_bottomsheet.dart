import 'controller/logout_controller.dart';import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/widgets/custom_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {LogoutBottomsheet(this.controller);

LogoutController controller;

@override Widget build(BuildContext context) { return SingleChildScrollView(child: Container(width: size.width, padding: getPadding(left: 24, top: 8, right: 24, bottom: 8), decoration: AppDecoration.outlineGray800.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgFrameGray700, height: getVerticalSize(3.00), width: getHorizontalSize(38.00)), Padding(padding: getPadding(top: 27), child: Text("lbl_logout".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold24RedA200.copyWith(height: 1.21))), Padding(padding: getPadding(top: 38), child: Text("msg_are_you_sure_you".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold20.copyWith(height: 1.20))), CustomButton(height: 55, width: 380, text: "lbl_logout".tr, margin: getMargin(top: 22)), CustomButton(height: 55, width: 380, text: "lbl_cancel".tr, margin: getMargin(top: 12, bottom: 48), variant: ButtonVariant.FillGray800, onTap: onTapCancel)]))); } 
onTapCancel() { Get.back(); } 
 }
