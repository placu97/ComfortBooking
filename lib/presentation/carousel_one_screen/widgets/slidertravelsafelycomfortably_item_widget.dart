import '../controller/carousel_one_controller.dart';
import '../models/slidertravelsafelycomfortably_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlidertravelsafelycomfortablyItemWidget extends StatelessWidget {
  SlidertravelsafelycomfortablyItemWidget(
      this.slidertravelsafelycomfortablyItemModelObj);

  SlidertravelsafelycomfortablyItemModel
      slidertravelsafelycomfortablyItemModelObj;

  var controller = Get.find<CarouselOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            307.00,
          ),
          child: Text(
            "msg_travel_safely_comfortably".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistBold32.copyWith(
              height: 1.10,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            363.00,
          ),
          margin: getMargin(
            top: 11,
          ),
          child: Text(
            "msg_lorem_ipsum_dolor".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRegular16.copyWith(
              letterSpacing: 0.20,
              height: 1.40,
            ),
          ),
        ),
      ],
    );
  }
}
