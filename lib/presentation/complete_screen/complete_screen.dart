import 'controller/complete_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';

class CompleteScreen extends GetWidget<CompleteController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCheckmark,
                          height: getVerticalSize(97),
                          width: getHorizontalSize(87)),
                      Container(
                          width: getHorizontalSize(278),
                          margin: getMargin(left: 33, top: 40, right: 32),
                          child: Text("msg_order_completed".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular18)),
                      CustomButton(
                          height: getVerticalSize(52),
                          text: "lbl_my_orders".tr,
                          margin: getMargin(top: 49, bottom: 5),
                          onTap: () {
                            onTapMyorders();
                          })
                    ]))));
  }

  onTapMyorders() {
    Get.toNamed(
      AppRoutes.trackingOrderScreen,
    );
  }
}
