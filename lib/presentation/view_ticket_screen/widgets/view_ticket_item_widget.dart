import '../controller/view_ticket_controller.dart';
import '../models/view_ticket_item_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewTicketItemWidget extends StatelessWidget {
  ViewTicketItemWidget(this.viewTicketItemModelObj);

  ViewTicketItemModel viewTicketItemModelObj;

  var controller = Get.find<ViewTicketController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 15.700001,
        bottom: 15.700001,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_name".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRegular16.copyWith(
                  letterSpacing: 0.20,
                  height: 1.25,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "lbl_daniel_austin".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistSemiBold18.copyWith(
                    letterSpacing: 0.20,
                    height: 1.22,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_phone_number".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRegular16.copyWith(
                  letterSpacing: 0.20,
                  height: 1.25,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  "msg_1_111_467_378_399".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistSemiBold18.copyWith(
                    letterSpacing: 0.20,
                    height: 1.22,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
