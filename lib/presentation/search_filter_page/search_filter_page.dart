import '../search_filter_page/widgets/listrectanglefour_item_widget.dart';
import '../search_filter_page/widgets/listsizemediumtypefilled_item_widget.dart';
import 'controller/search_filter_controller.dart';
import 'models/listrectanglefour_item_model.dart';
import 'models/listsizemediumtypefilled_item_model.dart';
import 'models/search_filter_model.dart';
import 'package:comfort_booking/core/app_export.dart';
import 'package:comfort_booking/widgets/custom_button.dart';
import 'package:comfort_booking/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchFilterPage extends StatelessWidget {
  SearchFilterController controller =
      Get.put(SearchFilterController(SearchFilterModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          decoration: AppDecoration.fillGray900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      882.00,
                    ),
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              right: 24,
                              bottom: 34,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "msg_recommended_586_379".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtUrbanistBold18.copyWith(
                                          height: 1.22,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgVideocamera,
                                      height: getSize(
                                        28.00,
                                      ),
                                      width: getSize(
                                        28.00,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 22,
                                  ),
                                  child: Obx(
                                    () => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .searchFilterModelObj
                                          .value
                                          .listrectanglefourItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListrectanglefourItemModel model =
                                            controller
                                                    .searchFilterModelObj
                                                    .value
                                                    .listrectanglefourItemList[
                                                index];
                                        return ListrectanglefourItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: getMargin(
                              left: 24,
                              top: 24,
                              right: 24,
                              bottom: 802,
                            ),
                            padding: getPadding(
                              left: 20,
                              top: 18,
                              right: 20,
                              bottom: 18,
                            ),
                            decoration:
                                AppDecoration.fillBluegray90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgSearchGray600,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_search".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRegular14Gray600
                                        .copyWith(
                                      letterSpacing: 0.20,
                                      height: 1.21,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant.imgIconlylightfilter,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: getVerticalSize(
                              882.00,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                padding: getPadding(
                                  left: 24,
                                  top: 104,
                                  bottom: 740,
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.searchFilterModelObj.value
                                    .listsizemediumtypefilledItemList.length,
                                itemBuilder: (context, index) {
                                  ListsizemediumtypefilledItemModel model =
                                      controller.searchFilterModelObj.value
                                              .listsizemediumtypefilledItemList[
                                          index];
                                  return ListsizemediumtypefilledItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: size.width,
                            decoration: AppDecoration.fillBlack900b2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(
                                    top: 35,
                                  ),
                                  child: IntrinsicWidth(
                                    child: Container(
                                      width: size.width,
                                      padding: getPadding(
                                        top: 8,
                                        bottom: 8,
                                      ),
                                      decoration:
                                          AppDecoration.outlineGray800.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL40,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFrameGray700,
                                            height: getVerticalSize(
                                              3.00,
                                            ),
                                            width: getHorizontalSize(
                                              38.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 23,
                                            ),
                                            child: Text(
                                              "lbl_filter_hotel".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtUrbanistBold24
                                                  .copyWith(
                                                height: 1.21,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 49,
                                              right: 24,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "lbl_country".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistBold18
                                                      .copyWith(
                                                    height: 1.22,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    bottom: 2,
                                                  ),
                                                  child: Text(
                                                    "lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistBold16Cyan600
                                                        .copyWith(
                                                      letterSpacing: 0.20,
                                                      height: 1.25,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 18,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      89.00,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 8,
                                                      right: 20,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtFillCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder19,
                                                    ),
                                                    child: Text(
                                                      "lbl_france".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16WhiteA700
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                        height: 1.25,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      77.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 8,
                                                      right: 20,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtOutlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder19,
                                                    ),
                                                    child: Text(
                                                      "lbl_italia".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                        height: 1.25,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      93.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 7,
                                                      right: 20,
                                                      bottom: 7,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtOutlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder19,
                                                    ),
                                                    child: Text(
                                                      "lbl_turkiye".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                        height: 1.25,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      109.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 6,
                                                      right: 20,
                                                      bottom: 6,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtOutlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder19,
                                                    ),
                                                    child: Text(
                                                      "lbl_germany".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                        height: 1.25,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 24,
                                                top: 23,
                                              ),
                                              child: Text(
                                                "lbl_sort_results".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistBold18
                                                    .copyWith(
                                                  height: 1.22,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 20,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      173.00,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 7,
                                                      right: 20,
                                                      bottom: 7,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtFillCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder19,
                                                    ),
                                                    child: Text(
                                                      "msg_highest_popularity"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16WhiteA700
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                        height: 1.25,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      135.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 7,
                                                      right: 20,
                                                      bottom: 7,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtOutlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder19,
                                                    ),
                                                    child: Text(
                                                      "lbl_highest_price".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                        height: 1.25,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      131.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 8,
                                                      right: 20,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtOutlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder19,
                                                    ),
                                                    child: Text(
                                                      "lbl_lowest_price".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                        height: 1.25,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      139.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 7,
                                                      right: 20,
                                                      bottom: 7,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtOutlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder19,
                                                    ),
                                                    child: Text(
                                                      "lbl_review_score".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                        height: 1.40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      top: 7,
                                                      bottom: 7,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineCyan600,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 20,
                                                            top: 1,
                                                          ),
                                                          child: Text(
                                                            "lbl_trending".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtUrbanistSemiBold16
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.20,
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
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 24,
                                                top: 25,
                                              ),
                                              child: Text(
                                                "msg_price_range_per".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistBold18
                                                    .copyWith(
                                                  height: 1.22,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 78,
                                                top: 18,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: getVerticalSize(
                                                      24.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      36.00,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgMail,
                                                          height:
                                                              getVerticalSize(
                                                            24.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            36.00,
                                                          ),
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding: getPadding(
                                                              left: 5,
                                                              top: 1,
                                                            ),
                                                            child: Text(
                                                              "lbl_18".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSourceSansProSemiBold14
                                                                  .copyWith(
                                                                height: 1.29,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: getVerticalSize(
                                                      24.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      36.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 83,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgMail,
                                                          height:
                                                              getVerticalSize(
                                                            24.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            36.00,
                                                          ),
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding: getPadding(
                                                              left: 5,
                                                              top: 1,
                                                            ),
                                                            child: Text(
                                                              "lbl_50".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSourceSansProSemiBold14
                                                                  .copyWith(
                                                                height: 1.29,
                                                              ),
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
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                            ),
                                            child: SliderTheme(
                                              data: SliderThemeData(
                                                trackShape:
                                                    RoundedRectSliderTrackShape(),
                                                activeTrackColor:
                                                    ColorConstant.cyan60001,
                                                inactiveTrackColor:
                                                    ColorConstant.gray700,
                                                thumbColor:
                                                    ColorConstant.gray800,
                                                thumbShape:
                                                    RoundSliderThumbShape(),
                                              ),
                                              child: RangeSlider(
                                                values: RangeValues(
                                                  0,
                                                  0,
                                                ),
                                                min: 0.0,
                                                max: 100.0,
                                                onChanged: (value) {},
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 24,
                                                top: 25,
                                              ),
                                              child: Text(
                                                "lbl_star_rating".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistBold18
                                                    .copyWith(
                                                  height: 1.22,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 18,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      74.00,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 8,
                                                      right: 20,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar16x16,
                                                          height: getSize(
                                                            16.00,
                                                          ),
                                                          width: getSize(
                                                            16.00,
                                                          ),
                                                          margin: getMargin(
                                                            top: 2,
                                                            bottom: 2,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                          ),
                                                          child: Text(
                                                            "lbl_5".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistSemiBold16WhiteA700
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.20,
                                                              height: 1.25,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 8,
                                                      right: 20,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar1,
                                                          height: getSize(
                                                            16.00,
                                                          ),
                                                          width: getSize(
                                                            16.00,
                                                          ),
                                                          margin: getMargin(
                                                            top: 2,
                                                            bottom: 2,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 8,
                                                          ),
                                                          child: Text(
                                                            "lbl_4".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistSemiBold16
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.20,
                                                              height: 1.25,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 8,
                                                      right: 20,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar1,
                                                          height: getSize(
                                                            16.00,
                                                          ),
                                                          width: getSize(
                                                            16.00,
                                                          ),
                                                          margin: getMargin(
                                                            top: 2,
                                                            bottom: 2,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 8,
                                                          ),
                                                          child: Text(
                                                            "lbl_3".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistSemiBold16
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.20,
                                                              height: 1.25,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 8,
                                                      right: 20,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar1,
                                                          height: getSize(
                                                            16.00,
                                                          ),
                                                          width: getSize(
                                                            16.00,
                                                          ),
                                                          margin: getMargin(
                                                            top: 2,
                                                            bottom: 2,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 8,
                                                          ),
                                                          child: Text(
                                                            "lbl_2".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistSemiBold16
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.20,
                                                              height: 1.25,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 8,
                                                      right: 20,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineCyan600
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar1,
                                                          height: getSize(
                                                            16.00,
                                                          ),
                                                          width: getSize(
                                                            16.00,
                                                          ),
                                                          margin: getMargin(
                                                            top: 2,
                                                            bottom: 2,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 8,
                                                          ),
                                                          child: Text(
                                                            "lbl_1".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistSemiBold16
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.20,
                                                              height: 1.25,
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
                                          Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 23,
                                              right: 24,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "lbl_facilities".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistBold18
                                                      .copyWith(
                                                    height: 1.22,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistBold16Cyan600
                                                        .copyWith(
                                                      letterSpacing: 0.20,
                                                      height: 1.25,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 20,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_wifi".tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox.value,
                                                      onChange: (value) {
                                                        controller.checkbox
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_swimming_pool"
                                                          .tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox1.value,
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      onChange: (value) {
                                                        controller.checkbox1
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_parking".tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox2.value,
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      variant: CheckboxVariant
                                                          .OutlineCyan600_1,
                                                      onChange: (value) {
                                                        controller.checkbox2
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_restaurant".tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox3.value,
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      variant: CheckboxVariant
                                                          .OutlineCyan600_1,
                                                      onChange: (value) {
                                                        controller.checkbox3
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 25,
                                              right: 24,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "msg_accommodation_type".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistBold18
                                                      .copyWith(
                                                    height: 1.22,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    bottom: 2,
                                                  ),
                                                  child: Text(
                                                    "lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistBold16Cyan600
                                                        .copyWith(
                                                      letterSpacing: 0.20,
                                                      height: 1.25,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 18,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_hotels".tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox4.value,
                                                      onChange: (value) {
                                                        controller.checkbox4
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_resorts".tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox5.value,
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      variant: CheckboxVariant
                                                          .OutlineCyan600_1,
                                                      onChange: (value) {
                                                        controller.checkbox5
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_villas".tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox6.value,
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      onChange: (value) {
                                                        controller.checkbox6
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_apartments".tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox7.value,
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      variant: CheckboxVariant
                                                          .OutlineCyan600_1,
                                                      onChange: (value) {
                                                        controller.checkbox7
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                  Obx(
                                                    () => CustomCheckbox(
                                                      text: "lbl_homestays".tr,
                                                      iconSize: 24,
                                                      value: controller
                                                          .checkbox8.value,
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      variant: CheckboxVariant
                                                          .OutlineCyan600_1,
                                                      onChange: (value) {
                                                        controller.checkbox8
                                                            .value = value;
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 48,
                                              bottom: 40,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomButton(
                                                  height: 58,
                                                  width: 184,
                                                  text: "lbl_reset".tr,
                                                  variant:
                                                      ButtonVariant.FillGray800,
                                                ),
                                                CustomButton(
                                                  height: 58,
                                                  width: 184,
                                                  text: "lbl_apply_filter".tr,
                                                  margin: getMargin(
                                                    left: 12,
                                                  ),
                                                  variant: ButtonVariant
                                                      .OutlineGreenA7003f,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
