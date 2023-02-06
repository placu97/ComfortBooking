import '../controller/search_type_controller.dart';
import '../models/listsizemediumtypefilled1_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listsizemediumtypefilled1ItemWidget extends StatelessWidget {
  Listsizemediumtypefilled1ItemWidget(
      this.listsizemediumtypefilled1ItemModelObj);

  Listsizemediumtypefilled1ItemModel listsizemediumtypefilled1ItemModelObj;

  var controller = Get.find<SearchTypeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            101.00,
          ),
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 20,
            top: 8,
            right: 20,
            bottom: 8,
          ),
          decoration: AppDecoration.txtFillCyan600.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder19,
          ),
          child: Text(
            "lbl_all_hotel".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistSemiBold16WhiteA700.copyWith(
              letterSpacing: 0.20,
              height: 1.25,
            ),
          ),
        ),
      ),
    );
  }
}
