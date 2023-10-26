import 'controller/write_a_review_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';
import 'package:mohamed_s_application2/widgets/custom_text_form_field.dart';

class WriteAReviewScreen extends GetWidget<WriteAReviewController> {
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
                      onTapArrowleft14();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_write_a_review".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 80),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant
                                    .imgUnsplashifnycbwtal4135x1421,
                                height: getVerticalSize(135),
                                width: getHorizontalSize(142),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(12))),
                            Padding(
                                padding:
                                    getPadding(left: 30, top: 10, bottom: 11),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_jacket".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium18Black900),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("lbl_black_jacket".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular15Black900)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_size_xl".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Gray500)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "lbl2".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .orange700,
                                                        fontSize:
                                                            getFontSize(18),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                TextSpan(
                                                    text: "lbl_134_982".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(18),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600))
                                              ]),
                                              textAlign: TextAlign.left))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("msg_add_photo_or_vi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900)),
                      Container(
                          width: double.maxFinite,
                          child: Padding(
                              padding: getPadding(top: 15),
                              child: DottedBorder(
                                  color: ColorConstant.gray20004,
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(2),
                                      top: getVerticalSize(2),
                                      right: getHorizontalSize(2),
                                      bottom: getVerticalSize(2)),
                                  strokeWidth: getHorizontalSize(2),
                                  radius: Radius.circular(16),
                                  borderType: BorderType.RRect,
                                  dashPattern: [6, 6],
                                  child: Container(
                                      padding: getPadding(
                                          left: 96,
                                          top: 24,
                                          right: 96,
                                          bottom: 24),
                                      decoration: AppDecoration.outlineGray20004
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgUpload,
                                                height: getSize(50),
                                                width: getSize(50)),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Text(
                                                    "msg_click_here_to_u".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular15
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5))))
                                          ]))))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("msg_write_yor_revie".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group1367Controller,
                          hintText: "msg_would_you_like_to".tr,
                          margin: getMargin(top: 11),
                          variant: TextFormFieldVariant.OutlineGray20004,
                          shape: TextFormFieldShape.RoundedBorder16,
                          padding: TextFormFieldPadding.PaddingT17,
                          fontStyle: TextFormFieldFontStyle.InterRegular14,
                          textInputAction: TextInputAction.done),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 15, bottom: 5),
                              child: Text("msg_350_characters".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14)))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(52),
                text: "lbl_write_a_review".tr,
                margin: getMargin(left: 16, right: 16, bottom: 39),
                onTap: () {
                  onTapWriteareviewOne();
                })));
  }

  onTapWriteareviewOne() {
    Get.toNamed(
      AppRoutes.reviewsTabContainerScreen,
    );
  }

  onTapArrowleft14() {
    Get.back();
  }
}
