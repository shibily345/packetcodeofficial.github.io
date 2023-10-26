import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';
import 'package:mohamed_s_application2/widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
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
                      onTapArrowleft7();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_reset_password".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 9),
                          child: Text("msg_enter_a_new_pas".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group964Controller,
                          hintText: "lbl_new_password".tr,
                          margin: getMargin(top: 49),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 18, right: 16, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgLocation
                                          : ImageConstant.imgLocation))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)),
                          isObscureText: controller.isShowPassword.value)),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group965Controller,
                          hintText: "msg_confirm_passwor".tr,
                          margin: getMargin(top: 20),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword1.value =
                                    !controller.isShowPassword1.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 18, right: 16, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword1.value
                                          ? ImageConstant.imgLocation
                                          : ImageConstant.imgLocation))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)),
                          isObscureText: controller.isShowPassword1.value)),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(52),
                          text: "lbl_confirm".tr,
                          margin: getMargin(bottom: 310),
                          onTap: () {
                            onTapConfirm();
                          })
                    ]))));
  }

  onTapConfirm() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }

  onTapArrowleft7() {
    Get.back();
  }
}
