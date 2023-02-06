import 'controller/add_new_card_controller.dart';import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/widgets/app_bar/appbar_image.dart';import 'package:comfort_booking/widgets/app_bar/appbar_title.dart';import 'package:comfort_booking/widgets/app_bar/custom_app_bar.dart';import 'package:comfort_booking/widgets/custom_button.dart';import 'package:comfort_booking/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class AddNewCardScreen extends GetWidget<AddNewCardController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 14), onTap: onTapArrowleft10), title: AppbarTitle(text: "lbl_add_new_card".tr, margin: getMargin(left: 16))), body: Container(width: size.width, padding: getPadding(left: 24, top: 27, right: 24, bottom: 27), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.cyan60001, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(240.00), width: getHorizontalSize(380.00), decoration: AppDecoration.fillCyan60001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgVector, height: getVerticalSize(240.00), width: getHorizontalSize(365.00), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgVectorYellowA700, height: getVerticalSize(240.00), width: getHorizontalSize(263.00), alignment: Alignment.centerLeft), Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(299.00), padding: getPadding(left: 24, top: 25, right: 24, bottom: 25), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup2), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(left: 27, top: 5), child: Text("lbl_mocard".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProSemiBold1651.copyWith(letterSpacing: 0.66, height: 1.27))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 47), child: Text("msg2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProSemiBold2702.copyWith(letterSpacing: 1.08, height: 1.26)))), Padding(padding: getPadding(left: 27, top: 43, right: 50), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_card_holder_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProRegular901.copyWith(letterSpacing: 0.36, height: 1.33)), Padding(padding: getPadding(top: 6), child: Text("lbl2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProSemiBold1501.copyWith(letterSpacing: 0.60, height: 1.27)))]), Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Text("lbl_expiry_date".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProRegular901.copyWith(letterSpacing: 0.36, height: 1.33))), Padding(padding: getPadding(top: 5), child: Text("lbl3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSourceSansProSemiBold1501.copyWith(letterSpacing: 0.60, height: 1.27)))])]))]))), CustomImageView(svgPath: ImageConstant.imgUser36x58, height: getVerticalSize(36.00), width: getHorizontalSize(58.00), alignment: Alignment.bottomRight, margin: getMargin(right: 26, bottom: 31))]))), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.statusFillTypeDefaultController, hintText: "lbl_daniel_austin".tr, margin: getMargin(top: 28)), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.statusFillTypeDefaultOneController, hintText: "msg_6373_2728_4797_4679".tr, margin: getMargin(top: 28)), Padding(padding: getPadding(top: 28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomTextFormField(width: 182, focusNode: FocusNode(), controller: controller.statusFillTypeDefaultTwoController, hintText: "lbl_02_30".tr), CustomTextFormField(width: 182, focusNode: FocusNode(), controller: controller.statusFillTypeDefaultThreeController, hintText: "lbl_190".tr, textInputAction: TextInputAction.done)])), CustomButton(height: 55, width: 380, text: "lbl_add_new_card".tr, margin: getMargin(top: 207, bottom: 5), variant: ButtonVariant.OutlineGreenA7003f)])))); } 
onTapArrowleft10() { Get.back(); } 
 }
