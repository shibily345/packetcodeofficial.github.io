import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';
import 'package:mohamed_s_application2/widgets/custom_text_form_field.dart';
import 'package:mohamed_s_application2/data/models/register/post_register_req.dart';
import 'package:mohamed_s_application2/data/models/register/post_register_resp.dart';
import 'package:mohamed_s_application2/core/constants/user.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mohamed_s_application2/domain/googleauth/google_auth_helper.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpScreen extends GetWidget<SignUpController> {
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
                      onTapArrowleft3();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_let_s_sign_up".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 26, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(136),
                                  margin: getMargin(left: 8),
                                  child: Text("lbl_create_account".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium30)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.nameController,
                                  hintText: "lbl_name".tr,
                                  margin: getMargin(top: 49)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.nameOneController,
                                  hintText: "lbl_email".tr,
                                  margin: getMargin(top: 20),
                                  textInputType: TextInputType.emailAddress),
                              Obx(() => CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.group964Controller,
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
                              CustomButton(
                                  height: getVerticalSize(52),
                                  text: "lbl_sign_up".tr,
                                  margin: getMargin(top: 84),
                                  onTap: () {
                                    onTapSignup();
                                  }),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtAlreadyhavean();
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 14),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_already_have_an2"
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
                                                    text: "lbl_sign_in".tr,
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

  Future<void> onTapSignup() async {
    PostRegisterReq postRegisterReq = PostRegisterReq(
      username: controller.nameOneController.text,
      password: controller.group964Controller.text,
      email: controller.nameOneController.text,
      name: controller.nameController.text,
      role: User.role,
    );
    try {
      await controller.callCreateRegister(
        postRegisterReq.toJson(),
      );
      _onOnTapSignUpSuccess();
    } on PostRegisterResp {
      _onOnTapSignUpError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapSignUpSuccess() {
    Get.offAllNamed(AppRoutes.informationScreen,
        arguments: {NavigationArgs.id: controller.postRegisterResp.data!.id!});
  }

  void _onOnTapSignUpError() {
    Fluttertoast.showToast(
      msg: controller.postRegisterResp.message!.toString(),
    );
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.signInScreen,
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

  onTapArrowleft3() {
    Get.back();
  }
}
