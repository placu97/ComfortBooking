import '../view_ticket_screen/widgets/view_ticket_item_widget.dart';import 'controller/view_ticket_controller.dart';import 'models/view_ticket_item_model.dart';import 'package:comfort_booking/core/app_export.dart';import 'package:comfort_booking/widgets/app_bar/appbar_image.dart';import 'package:comfort_booking/widgets/app_bar/appbar_title.dart';import 'package:comfort_booking/widgets/app_bar/custom_app_bar.dart';import 'package:comfort_booking/widgets/custom_button.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;class ViewTicketScreen extends GetWidget<ViewTicketController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 14), onTap: onTapArrowleft15), title: AppbarTitle(text: "lbl_ticket".tr, margin: getMargin(left: 16))), body: Container(width: size.width, padding: getPadding(left: 24, top: 48, right: 24, bottom: 48), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(380.00), margin: getMargin(top: 4), padding: getPadding(left: 22, top: 33, right: 22, bottom: 33), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroupBlueGray100), fit: BoxFit.cover)), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_royale_president".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistBold20.copyWith(height: 1.20)), Container(height: getSize(256.00), width: getSize(256.00), margin: getMargin(top: 11), padding: getPadding(all: 16), decoration: AppDecoration.fillBluegray90001, child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgVectorWhiteA700, height: getSize(224.00), width: getSize(224.00), alignment: Alignment.center)])), Container(height: getVerticalSize(2.00), width: getHorizontalSize(335.00), margin: getMargin(top: 18), decoration: BoxDecoration(color: ColorConstant.gray800)), Padding(padding: getPadding(left: 17, top: 53, right: 18, bottom: 2), child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.viewTicketModelObj.value.viewTicketItemList.length, itemBuilder: (context, index) {ViewTicketItemModel model = controller.viewTicketModelObj.value.viewTicketItemList[index]; return ViewTicketItemWidget(model);})))])), CustomButton(height: 55, width: 380, text: "lbl_download_ticket".tr, margin: getMargin(top: 33), variant: ButtonVariant.OutlineGreenA7003f)])))); } 
onTapArrowleft15() { Get.back(); } 
 }
