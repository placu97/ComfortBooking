import 'controller/refund_method_controller.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RefundMethodDialog extends StatelessWidget {
  RefundMethodDialog(this.controller);

  RefundMethodController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 32,
      ),
      decoration: AppDecoration.fillBluegray90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgGroup,
            height: getVerticalSize(
              180.00,
            ),
            width: getHorizontalSize(
              185.00,
            ),
            margin: getMargin(
              top: 8,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 31,
            ),
            child: Text(
              "lbl_successfull".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistBold24Cyan600.copyWith(
                height: 1.21,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              250.00,
            ),
            margin: getMargin(
              top: 17,
            ),
            child: Text(
              "msg_you_have_successfully".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular18.copyWith(
                letterSpacing: 0.20,
                height: 1.40,
              ),
            ),
          ),
          CustomButton(
            height: 58,
            width: 276,
            text: "lbl_ok".tr,
            margin: getMargin(
              top: 29,
            ),
          ),
        ],
      ),
    );
  }
}
