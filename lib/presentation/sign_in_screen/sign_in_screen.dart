import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';
import 'package:mohamed_s_application2/widgets/custom_text_form_field.dart';
import 'package:mohamed_s_application2/data/models/login/post_login_req.dart';
import 'package:mohamed_s_application2/data/models/login/post_login_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mohamed_s_application2/domain/googleauth/google_auth_helper.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInScreen extends GetWidget<SignInController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_let_s_sign_in".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 25, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(144),
                                  child: Text("lbl_welcome_back".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium30)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.nameController,
                                  hintText: "lbl_name".tr,
                                  margin: getMargin(top: 49)),
                              Obx(() => CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.group963Controller,
                                  hintText: "lbl_password".tr,
                                  margin: getMargin(top: 20),
                                  padding: TextFormFieldPadding.PaddingT14,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 18,
                                              right: 16,
                                              bottom: 18),
                                          child: CustomImageView(
                                              svgPath: controller
                                                      .isShowPassword.value
                                                  ? ImageConstant.imgLocation
                                                  : ImageConstant
                                                      .imgLocation))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(52)),
                                  isObscureText:
                                      controller.isShowPassword.value)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword();
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 13),
                                          child: Text("lbl_forgot_password".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium14)))),
                              CustomButton(
                                  height: getVerticalSize(52),
                                  text: "lbl_sign_in".tr,
                                  margin: getMargin(top: 121),
                                  onTap: () {
                                    onTapSignIn();
                                  }),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveanaccount();
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 14),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_don_t_have_an_a2"
                                                        .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray500,
                                                        fontSize:
                                                            getFontSize(13),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_sign_up".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(13),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ]),
                                              textAlign: TextAlign.left)))),
                              Padding(
                                  padding: getPadding(top: 37),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            getPadding(top: 17, bottom: 16),
                                        child: SizedBox(
                                            width: getHorizontalSize(105),
                                            child: Divider(
                                                height: getVerticalSize(2),
                                                thickness: getVerticalSize(2),
                                                color:
                                                    ColorConstant.black900))),
                                    Container(
                                        padding: getPadding(
                                            left: 10,
                                            top: 6,
                                            right: 10,
                                            bottom: 6),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text(
                                                      "msg_or_continue_wit".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14Black900))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(top: 17, bottom: 16),
                                        child: SizedBox(
                                            width: getHorizontalSize(105),
                                            child: Divider(
                                                height: getVerticalSize(2),
                                                thickness: getVerticalSize(2),
                                                color: ColorConstant.black900)))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomButton(
                                            height: getVerticalSize(52),
                                            width: getHorizontalSize(164),
                                            text: "lbl_google".tr,
                                            variant:
                                                ButtonVariant.FillGray10001,
                                            shape: ButtonShape.RoundedBorder7,
                                            padding: ButtonPadding.PaddingT12,
                                            fontStyle: ButtonFontStyle
                                                .PoppinsRegular15Black900,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 16),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGoogle)),
                                            onTap: () {
                                              onTapGoogle();
                                            }),
                                        CustomButton(
                                            height: getVerticalSize(52),
                                            width: getHorizontalSize(163),
                                            text: "lbl_apple".tr,
                                            variant:
                                                ButtonVariant.FillGray10001,
                                            shape: ButtonShape.RoundedBorder7,
                                            padding: ButtonPadding.PaddingT12,
                                            fontStyle: ButtonFontStyle
                                                .PoppinsRegular15Black900,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 16),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgUimapple)))
                                      ]))
                            ]))))));
  }

  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  Future<void> onTapSignIn() async {
    PostLoginReq postLoginReq = PostLoginReq(
      username: controller.nameController.text,
      password: controller.group963Controller.text,
    );
    try {
      await controller.callCreateLogin(
        postLoginReq.toJson(),
      );
      _onOnTapSignInSuccess();
    } on PostLoginResp {
      _onOnTapSignInError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapSignInSuccess() {
    Get.offAllNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  void _onOnTapSignInError() {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        onSuccessGoogleAuthResponse(googleUser);
      } else {
        onErrorGoogleAuthResponse();
      }
    }).catchError((onError) {
      onErrorGoogleAuthResponse();
    });
  }

  onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser) {
    Get.offAllNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onErrorGoogleAuthResponse() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  onTapArrowleft2() {
    Get.back();
  }
}
