import '../notifications_screen/widgets/listgroup_item_widget.dart';import '../notifications_screen/widgets/listsearch_item_widget.dart';import 'controller/notifications_controller.dart';import 'models/listgroup_item_model.dart';import 'models/listsearch_item_model.dart';import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/widgets/app_bar/appbar_image.dart';import 'package:comfort_booking/widgets/app_bar/appbar_title.dart';import 'package:comfort_booking/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class NotificationsScreen extends GetWidget<NotificationsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 11, bottom: 14), onTap: onTapArrowleft5), title: AppbarTitle(text: "lbl_notifications".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgClock28x28, margin: getMargin(left: 24, top: 11, right: 24, bottom: 14))]), body: Container(width: size.width, padding: getPadding(all: 24), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 4), child: Text("lbl_today".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold18.copyWith(height: 1.22))), Padding(padding: getPadding(top: 22), child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.notificationsModelObj.value.listsearchItemList.length, itemBuilder: (context, index) {ListsearchItemModel model = controller.notificationsModelObj.value.listsearchItemList[index]; return ListsearchItemWidget(model);}))), Padding(padding: getPadding(top: 25), child: Text("lbl_yesterday".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold18.copyWith(height: 1.22))), Padding(padding: getPadding(top: 22), child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.notificationsModelObj.value.listgroupItemList.length, itemBuilder: (context, index) {ListgroupItemModel model = controller.notificationsModelObj.value.listgroupItemList[index]; return ListgroupItemWidget(model);}))), Padding(padding: getPadding(top: 23), child: Text("msg_december_11_2024".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold18.copyWith(height: 1.22)))])), bottomNavigationBar: Container(margin: getMargin(left: 24, right: 24, bottom: 8), padding: getPadding(all: 16), decoration: AppDecoration.outlineBlack9000c.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgSearch, height: getVerticalSize(80.00), width: getHorizontalSize(83.00)), Padding(padding: getPadding(left: 20, top: 15, right: 55, bottom: 16), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_verification_successful".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold18.copyWith(height: 1.22)), Padding(padding: getPadding(top: 9), child: Text("msg_account_verification".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistMedium14Gray400.copyWith(letterSpacing: 0.20, height: 1.21)))]))])))); } 
onTapArrowleft5() { Get.back(); } 
 }
