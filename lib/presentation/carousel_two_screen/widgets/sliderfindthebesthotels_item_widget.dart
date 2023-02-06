import '../controller/carousel_two_controller.dart';
import '../models/sliderfindthebesthotels_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderfindthebesthotelsItemWidget extends StatelessWidget {
  SliderfindthebesthotelsItemWidget(this.sliderfindthebesthotelsItemModelObj);

  SliderfindthebesthotelsItemModel sliderfindthebesthotelsItemModelObj;

  var controller = Get.find<CarouselTwoController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            327.00,
          ),
          child: Text(
            "msg_find_the_best_hotels".tr,
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
