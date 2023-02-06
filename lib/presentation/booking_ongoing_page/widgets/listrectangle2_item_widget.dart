import '../controller/booking_ongoing_controller.dart';
import '../models/listrectangle2_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle2ItemWidget extends StatelessWidget {
  Listrectangle2ItemWidget(this.listrectangle2ItemModelObj);

  Listrectangle2ItemModel listrectangle2ItemModelObj;

  var controller = Get.find<BookingOngoingController>();

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
                    top: 8,
                    bottom: 6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_royale_president".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistBold20.copyWith(
                          height: 1.20,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                        ),
                        child: Text(
                          "lbl_paris_france".tr,
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
                          top: 11,
                        ),
                        variant: ButtonVariant.FillGreenA7001e,
                        shape: ButtonShape.RoundedBorder6,
                        padding: ButtonPadding.PaddingAll4,
                        fontStyle: ButtonFontStyle.UrbanistSemiBold10,
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
                color: ColorConstant.blueGray700,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    height: 38,
                    width: 164,
                    text: "lbl_cancel_booking".tr,
                    variant: ButtonVariant.OutlineCyan600,
                    shape: ButtonShape.CircleBorder19,
                    padding: ButtonPadding.PaddingAll7,
                    fontStyle: ButtonFontStyle.UrbanistSemiBold16Cyan600,
                  ),
                  CustomButton(
                    height: 38,
                    width: 164,
                    text: "lbl_view_ticket".tr,
                    shape: ButtonShape.CircleBorder19,
                    padding: ButtonPadding.PaddingAll7,
                    fontStyle: ButtonFontStyle.UrbanistSemiBold16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
