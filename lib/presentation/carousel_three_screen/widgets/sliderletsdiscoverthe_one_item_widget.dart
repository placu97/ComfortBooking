import '../controller/carousel_three_controller.dart';
import '../models/sliderletsdiscoverthe_one_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderletsdiscovertheOneItemWidget extends StatelessWidget {
  SliderletsdiscovertheOneItemWidget(this.sliderletsdiscovertheOneItemModelObj);

  SliderletsdiscovertheOneItemModel sliderletsdiscovertheOneItemModelObj;

  var controller = Get.find<CarouselThreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            338.00,
          ),
          child: Text(
            "msg_let_s_discover_the".tr,
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
            top: 18,
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
