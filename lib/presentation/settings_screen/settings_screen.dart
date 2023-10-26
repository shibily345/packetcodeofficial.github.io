import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application2/widgets/custom_switch.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 5, bottom: 5),
                    onTap: () {
                      onTapArrowleft15();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_settings".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 16, top: 14, right: 16, bottom: 14),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(children: [
                            Container(
                                height: getSize(64),
                                width: getSize(64),
                                margin: getMargin(top: 1),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse45,
                                          height: getSize(48),
                                          width: getSize(48),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(24)),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getSize(64),
                                              width: getSize(64),
                                              child: CircularProgressIndicator(
                                                  value: 0.5)))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 22, top: 6, bottom: 8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_anne_christion".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular18Black900),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_premium_user".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Gray500))
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowrightBlack900,
                                height: getSize(16),
                                width: getSize(16),
                                margin: getMargin(top: 24, bottom: 25))
                          ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Text("lbl_settings".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900)),
                      GestureDetector(
                          onTap: () {
                            onTapNotification();
                          },
                          child: Container(
                              margin: getMargin(top: 9),
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.fillGray10001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgNotification24x24,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(left: 24),
                                    child: Text("lbl_notifications".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16)),
                                Spacer(),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(top: 5, bottom: 4),
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ]))),
                      GestureDetector(
                          onTap: () {
                            onTapTrackingOrder();
                          },
                          child: Container(
                              margin: getMargin(top: 15),
                              padding: getPadding(
                                  left: 16, top: 12, right: 16, bottom: 12),
                              decoration: AppDecoration.fillGray10001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTimeline,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(top: 1, bottom: 2)),
                                    Padding(
                                        padding: getPadding(left: 24, top: 3),
                                        child: Text("lbl_tracking_order".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular16)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightBlack900,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(top: 5, bottom: 6))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowclock();
                          },
                          child: Container(
                              margin: getMargin(top: 15),
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.fillGray10001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClock24x24,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1)),
                                    Padding(
                                        padding: getPadding(left: 24),
                                        child: Text("lbl_order_status".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular16)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightBlack900,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(top: 4, bottom: 5))
                                  ]))),
                      Container(
                          margin: getMargin(top: 15),
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMinimize,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 1, bottom: 2)),
                                Padding(
                                    padding: getPadding(left: 24, top: 4),
                                    child: Text("lbl_language".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlack900,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin: getMargin(top: 5, bottom: 6))
                              ])),
                      Container(
                          margin: getMargin(top: 15, bottom: 5),
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgComputer24x24,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 24, top: 1),
                                    child: Text("lbl_faqs".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlack900,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin: getMargin(top: 4, bottom: 5))
                              ]))
                    ]))));
  }

  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  onTapTrackingOrder() {
    Get.toNamed(
      AppRoutes.trackingOrderScreen,
    );
  }

  onTapRowclock() {
    Get.toNamed(
      AppRoutes.orderStatusScreen,
    );
  }

  onTapArrowleft15() {
    Get.back();
  }
}
