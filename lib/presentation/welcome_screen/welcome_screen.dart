import 'controller/welcome_controller.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                margin: getMargin(
                  top: 332,
                ),
                padding: getPadding(
                  left: 32,
                  top: 45,
                  right: 32,
                  bottom: 45,
                ),
                decoration: AppDecoration.gradientGray80000Bluegray90002,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 208,
                      ),
                      child: Text(
                        "lbl_welcome_to".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistBold48.copyWith(
                          height: 1.21,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 24,
                      ),
                      child: Text(
                        "lbl_comfort".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistBlack64.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        327.00,
                      ),
                      margin: getMargin(
                        top: 40,
                      ),
                      child: Text(
                        "msg_the_best_hotel_booking".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold18.copyWith(
                          letterSpacing: 0.20,
                          height: 1.40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
