import 'controller/booking_completed_tab_container_controller.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/presentation/booking_cancelled_page/booking_cancelled_page.dart';
import 'package:comfort_booking/presentation/booking_completed_page/booking_completed_page.dart';
import 'package:comfort_booking/presentation/booking_ongoing_page/booking_ongoing_page.dart';
import 'package:comfort_booking/widgets/app_bar/appbar_image.dart';
import 'package:comfort_booking/widgets/app_bar/appbar_title.dart';
import 'package:comfort_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookingCompletedTabContainerScreen
    extends GetWidget<BookingCompletedTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 56,
          leading: AppbarImage(
            height: getSize(
              32.00,
            ),
            width: getSize(
              32.00,
            ),
            imagePath: ImageConstant.imageNotFound,
            margin: getMargin(
              left: 24,
              top: 9,
              bottom: 12,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_my_bookings".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28.00,
              ),
              width: getSize(
                28.00,
              ),
              imagePath: ImageConstant.imageNotFound,
              margin: getMargin(
                left: 24,
                top: 11,
                right: 24,
                bottom: 14,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  380.00,
                ),
                margin: getMargin(
                  top: 26,
                ),
                child: TabBar(
                  controller: controller.group136Controller,
                  tabs: [
                    Tab(
                      text: "lbl_ongoing".tr,
                    ),
                    Tab(
                      text: "lbl_completed".tr,
                    ),
                    Tab(
                      text: "lbl_canceled".tr,
                    ),
                  ],
                  labelColor: ColorConstant.whiteA700,
                  unselectedLabelColor: ColorConstant.cyan600,
                  indicator: BoxDecoration(
                    color: ColorConstant.cyan600,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        22.00,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  top: 30,
                ),
                height: getVerticalSize(
                  727.00,
                ),
                child: TabBarView(
                  controller: controller.group136Controller,
                  children: [
                    BookingOngoingPage(),
                    BookingCompletedPage(),
                    BookingCancelledPage(),
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
