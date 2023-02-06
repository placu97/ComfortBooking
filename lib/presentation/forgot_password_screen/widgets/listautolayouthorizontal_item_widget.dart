import '../controller/forgot_password_controller.dart';
import '../models/listautolayouthorizontal_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListautolayouthorizontalItemWidget extends StatelessWidget {
  ListautolayouthorizontalItemWidget(this.listautolayouthorizontalItemModelObj);

  ListautolayouthorizontalItemModel listautolayouthorizontalItemModelObj;

  var controller = Get.find<ForgotPasswordController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 12.000015,
        bottom: 12.000015,
      ),
      padding: getPadding(
        all: 24,
      ),
      decoration: AppDecoration.outlineCyan60001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Container(
            height: getSize(
              80.00,
            ),
            width: getSize(
              80.00,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray800,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  40.00,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 16,
              right: 138,
              bottom: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_via_sms".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistMedium14.copyWith(
                    letterSpacing: 0.20,
                    height: 1.21,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "lbl_1_111_99".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistBold16.copyWith(
                      letterSpacing: 0.20,
                      height: 1.25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
