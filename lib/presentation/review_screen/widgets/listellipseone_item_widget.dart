import '../controller/review_controller.dart';
import '../models/listellipseone_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListellipseoneItemWidget extends StatelessWidget {
  ListellipseoneItemWidget(this.listellipseoneItemModelObj);

  ListellipseoneItemModel listellipseoneItemModelObj;

  var controller = Get.find<ReviewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 10.0,
        bottom: 10.0,
      ),
      padding: getPadding(
        left: 24,
        top: 23,
        right: 24,
        bottom: 23,
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
                imagePath: ImageConstant.imgEllipse1,
                height: getSize(
                  48.00,
                ),
                width: getSize(
                  48.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    24.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 7,
                  bottom: 3,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_jenny_wilson".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistBold16.copyWith(
                        letterSpacing: 0.20,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "lbl_dec_10_2024".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistMedium12Gray400.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                height: 32,
                width: 60,
                text: "lbl_5".tr,
                margin: getMargin(
                  top: 8,
                  bottom: 8,
                ),
                shape: ButtonShape.RoundedBorder16,
                padding: ButtonPadding.PaddingT7,
                fontStyle: ButtonFontStyle.UrbanistSemiBold14,
                prefixWidget: Container(
                  margin: getMargin(
                    right: 8,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgStar16x16,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: getHorizontalSize(
              293.00,
            ),
            margin: getMargin(
              top: 12,
            ),
            child: Text(
              "msg_very_nice_and_comfortable".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRegular14WhiteA700.copyWith(
                letterSpacing: 0.20,
                height: 1.40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
