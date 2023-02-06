import 'controller/sign_up_blank_controller.dart';import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/core/utils/validation_functions.dart';import 'package:comfort_booking/widgets/custom_button.dart';import 'package:comfort_booking/widgets/custom_checkbox.dart';import 'package:comfort_booking/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:comfort_booking/domain/googleauth/google_auth_helper.dart';
// ignore_for_file: must_be_immutable
class SignUpBlankScreen extends GetWidget<SignUpBlankController> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray900, body: Form(key: _formKey, child: Container(width: size.width, padding: getPadding(left: 24, top: 11, right: 24, bottom: 11), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(28.00), width: getSize(28.00), onTap: () {onTapImgArrowleft();}), Container(width: getHorizontalSize(257.00), margin: getMargin(top: 93), child: Text("msg_create_your_account".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold48.copyWith(height: 1.10))), Container(width: getHorizontalSize(380.00), margin: getMargin(top: 60), padding: getPadding(left: 30, top: 21, right: 52, bottom: 21), decoration: AppDecoration.txtFillBluegray90001.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder12), child: Text("lbl_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular14Gray500.copyWith(letterSpacing: 0.20, height: 1.21))), Obx(() => CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.passwordController, hintText: "lbl_password".tr, margin: getMargin(top: 20), padding: TextFormFieldPadding.PaddingT21, fontStyle: TextFormFieldFontStyle.UrbanistRegular14, textInputAction: TextInputAction.done, prefix: Container(margin: getMargin(left: 20, top: 20, right: 12, bottom: 20), child: CustomImageView(svgPath: ImageConstant.imgLock)), prefixConstraints: BoxConstraints(minWidth: getSize(20.00), minHeight: getSize(20.00)), suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: getMargin(left: 30, top: 20, right: 20, bottom: 20), child: CustomImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgReply : ImageConstant.imgReply))), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(20.00), minHeight: getVerticalSize(20.00)), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}, isObscureText: !controller.isShowPassword.value)), Obx(() => CustomCheckbox(text: "lbl_remember_me".tr, iconSize: 24, value: controller.checkbox.value, padding: getPadding(top: 20), variant: CheckboxVariant.OutlineCyan600, shape: CheckboxShape.RoundedBorder4, onChange: (value) {controller.checkbox.value = value;})), CustomButton(height: 55, width: 380, text: "lbl_sign_up".tr, margin: getMargin(top: 20), variant: ButtonVariant.FillCyan60001), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 10, top: 73, right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Container(height: getVerticalSize(1.00), width: getHorizontalSize(96.00), margin: getMargin(top: 12, bottom: 8), decoration: BoxDecoration(color: ColorConstant.gray800)), Text("msg_or_continue_with".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray100.copyWith(letterSpacing: 0.20, height: 1.22)), Container(height: getVerticalSize(1.00), width: getHorizontalSize(96.00), margin: getMargin(top: 12, bottom: 8), decoration: BoxDecoration(color: ColorConstant.gray800))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 32), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.blueGray90001, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray800, width: getHorizontalSize(1.00)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60.00), width: getHorizontalSize(88.00), padding: getPadding(left: 32, top: 18, right: 32, bottom: 18), decoration: AppDecoration.outlineGray8001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgAutolayouthorizontalWhiteA700, height: getSize(24.00), width: getSize(24.00), alignment: Alignment.center)]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 20), color: ColorConstant.blueGray90001, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray800, width: getHorizontalSize(1.00)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60.00), width: getHorizontalSize(87.00), padding: getPadding(left: 31, top: 18, right: 31, bottom: 18), decoration: AppDecoration.outlineGray8001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgGoogle, height: getVerticalSize(24.00), width: getHorizontalSize(23.00), alignment: Alignment.center, onTap: () {onTapImgGoogle();})]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 20), color: ColorConstant.blueGray90001, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray800, width: getHorizontalSize(1.00)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60.00), width: getHorizontalSize(88.00), padding: getPadding(left: 32, top: 18, right: 32, bottom: 18), decoration: AppDecoration.outlineGray8001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgAutolayouthorizontal24x24, height: getSize(24.00), width: getSize(24.00), alignment: Alignment.center)])))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 66, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_already_have_an".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular14Gray100.copyWith(letterSpacing: 0.20, height: 1.21)), Padding(padding: getPadding(left: 8), child: Text("lbl_sign_in".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14.copyWith(letterSpacing: 0.20, height: 1.21)))])))]))))); } 
onTapImgArrowleft() { Get.back(); } 
onTapImgGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
 }