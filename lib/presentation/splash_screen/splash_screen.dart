import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 171,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBag11,
                height: getSize(
                  191,
                ),
                width: getSize(
                  191,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 25,
                  bottom: 5,
                ),
                child: Text(
                  "lbl_fashionista".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtQuicksandRegular32.copyWith(
                    letterSpacing: getHorizontalSize(
                      1.0,
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
