import 'controller/social_account_link_alert_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class SocialAccountLinkAlertBottomsheet extends StatelessWidget {
  SocialAccountLinkAlertBottomsheet(this.controller);

  SocialAccountLinkAlertController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 40, right: 16, bottom: 40),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 2),
                          child: Text("lbl_alert".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium25)),
                      Container(
                          width: getHorizontalSize(197),
                          margin: getMargin(top: 7),
                          child: Text("msg_are_you_sure_yo".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular15)),
                      Padding(
                          padding: getPadding(top: 47),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(52),
                                    width: getHorizontalSize(164),
                                    text: "lbl_yes".tr,
                                    onTap: () {
                                      onTapYes();
                                    }),
                                CustomButton(
                                    height: getVerticalSize(52),
                                    width: getHorizontalSize(163),
                                    text: "lbl_no".tr,
                                    variant: ButtonVariant.FillGray200,
                                    fontStyle: ButtonFontStyle
                                        .PoppinsMedium16Black900_1,
                                    onTap: () {
                                      onTapNo();
                                    })
                              ]))
                    ]))));
  }

  onTapYes() {
    Get.toNamed(
      AppRoutes.socialAccountLinkScreen,
    );
  }

  onTapNo() {
    Get.toNamed(
      AppRoutes.socialAccountLinkScreen,
    );
  }
}
