import '../forgot_password_screen/widgets/listautolayouthorizontal_item_widget.dart';import 'controller/forgot_password_controller.dart';import 'models/listautolayouthorizontal_item_model.dart';import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/widgets/app_bar/appbar_image.dart';import 'package:comfort_booking/widgets/app_bar/appbar_title.dart';import 'package:comfort_booking/widgets/app_bar/custom_app_bar.dart';import 'package:comfort_booking/widgets/custom_button.dart';import 'package:flutter/material.dart';class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 11, bottom: 15), onTap: onTapArrowleft3), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: getMargin(left: 16))), body: Container(width: size.width, padding: getPadding(left: 24, top: 48, right: 24, bottom: 48), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage240x240, height: getSize(240.00), width: getSize(240.00), margin: getMargin(top: 9)), Container(width: getHorizontalSize(365.00), margin: getMargin(top: 40), child: Text("msg_select_which_contact".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16WhiteA700.copyWith(letterSpacing: 0.20, height: 1.40))), Padding(padding: getPadding(top: 21), child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.forgotPasswordModelObj.value.listautolayouthorizontalItemList.length, itemBuilder: (context, index) {ListautolayouthorizontalItemModel model = controller.forgotPasswordModelObj.value.listautolayouthorizontalItemList[index]; return ListautolayouthorizontalItemWidget(model);}))), CustomButton(height: 55, width: 380, text: "lbl_continue".tr, margin: getMargin(top: 39), variant: ButtonVariant.OutlineGreenA7003f)])))); } 
onTapArrowleft3() { Get.back(); } 
 }
