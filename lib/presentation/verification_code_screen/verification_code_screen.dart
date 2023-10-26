import 'controller/verification_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodeScreen extends GetWidget<VerificationCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                      onTapArrowleft6();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_verification_co".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_enter_the_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      Padding(
                          padding: getPadding(top: 52, right: 78),
                          child: Text("msg_did_t_receive_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular15Black900)),
                      Padding(
                          padding: getPadding(left: 9, top: 19, right: 9),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 5,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(27),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(52),
                                  fieldWidth: getHorizontalSize(52),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10)),
                                  selectedFillColor: ColorConstant.gray20001,
                                  activeFillColor: ColorConstant.gray20001,
                                  inactiveFillColor: ColorConstant.gray20001,
                                  inactiveColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  selectedColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeColor:
                                      ColorConstant.fromHex("#1212121D"))))),
                      Padding(
                          padding: getPadding(top: 10, right: 15),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_did_t_receive_a".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_resent_code".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomButton(
                          height: getVerticalSize(52),
                          text: "lbl_confirm".tr,
                          margin: getMargin(top: 97, bottom: 5),
                          onTap: () {
                            onTapConfirm();
                          })
                    ]))));
  }

  onTapConfirm() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }

  onTapArrowleft6() {
    Get.back();
  }
}
