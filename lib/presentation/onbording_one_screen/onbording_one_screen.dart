import 'controller/onbording_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/custom_icon_button.dart';

class OnbordingOneScreen extends GetWidget<OnbordingOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnbordingone),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 13, right: 16, bottom: 13),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtSkip();
                                  },
                                  child: Text("lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium18))),
                          Spacer(),
                          Text("lbl_cool_product".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24),
                          Container(
                              width: getHorizontalSize(285),
                              margin: getMargin(left: 29, top: 14, right: 29),
                              child: Text("msg_we_create_produ".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular14)),
                          Container(
                              height: getSize(80),
                              width: getSize(80),
                              margin: getMargin(top: 39, bottom: 37),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    shape: IconButtonShape.CircleBorder30,
                                    alignment: Alignment.center,
                                    onTap: () {
                                      onTapBtnArrowright();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightBlack9001)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getSize(80),
                                        width: getSize(80),
                                        child: CircularProgressIndicator(
                                            value: 0.5)))
                              ]))
                        ])))));
  }

  onTapTxtSkip() {
    Get.toNamed(
      AppRoutes.signUpSignInScreen,
    );
  }

  onTapBtnArrowright() {
    Get.toNamed(
      AppRoutes.onbordingTwoScreen,
    );
  }
}
