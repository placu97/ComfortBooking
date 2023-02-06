import '../controller/booking_cancelled_controller.dart';
import '../models/listrectangle1_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle1ItemWidget extends StatelessWidget {
  Listrectangle1ItemWidget(this.listrectangle1ItemModelObj);

  Listrectangle1ItemModel listrectangle1ItemModelObj;

  var controller = Get.find<BookingCancelledController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: getMargin(
          top: 10.0,
          bottom: 10.0,
        ),
        padding: getPadding(
          all: 20,
        ),
        decoration: AppDecoration.outlineBlack9000c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4100x100,
                  height: getSize(
                    100.00,
                  ),
                  width: getSize(
                    100.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 5,
                    bottom: 6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_palms_casino_resort".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistBold20.copyWith(
                          height: 1.20,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Text(
                          "msg_london_united_kingdom".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRegular14.copyWith(
                            letterSpacing: 0.20,
                            height: 1.21,
                          ),
                        ),
                      ),
                      CustomButton(
                        height: 24,
                        width: 60,
                        text: "lbl_paid".tr,
                        margin: getMargin(
                          top: 10,
                        ),
                        variant: ButtonVariant.FillRedA2001e,
                        shape: ButtonShape.RoundedBorder6,
                        padding: ButtonPadding.PaddingAll4,
                        fontStyle: ButtonFontStyle.UrbanistSemiBold10RedA200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                340.00,
              ),
              margin: getMargin(
                top: 20,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.blueGray70001,
              ),
            ),
            Container(
              width: getHorizontalSize(
                340.00,
              ),
              margin: getMargin(
                top: 19,
              ),
              padding: getPadding(
                left: 30,
                top: 9,
                right: 37,
                bottom: 9,
              ),
              decoration: AppDecoration.txtFillRedA20033.copyWith(
                borderRadius: BorderRadiusStyle.txtRoundedBorder12,
              ),
              child: Text(
                "msg_you_canceled_this".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRegular10RedA200.copyWith(
                  letterSpacing: 0.20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
