import '../social_account_link_screen/widgets/listfacebook_item_widget.dart';
import 'controller/social_account_link_controller.dart';
import 'models/listfacebook_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application2/presentation/social_account_link_alert_bottomsheet/social_account_link_alert_bottomsheet.dart';
import 'package:mohamed_s_application2/presentation/social_account_link_alert_bottomsheet/controller/social_account_link_alert_controller.dart';

class SocialAccountLinkScreen extends GetWidget<SocialAccountLinkController> {
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
                      onTapArrowleft18();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_social_network".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 24, right: 16),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(15));
                    },
                    itemCount: controller.socialAccountLinkModelObj.value
                        .listfacebookItemList.value.length,
                    itemBuilder: (context, index) {
                      ListfacebookItemModel model = controller
                          .socialAccountLinkModelObj
                          .value
                          .listfacebookItemList
                          .value[index];
                      return ListfacebookItemWidget(model, onTapImgLink: () {
                        onTapImgLink();
                      });
                    })))));
  }

  onTapImgLink() {
    Get.bottomSheet(
        SocialAccountLinkAlertBottomsheet(
            Get.put(SocialAccountLinkAlertController())),
        isScrollControlled: true);
  }

  onTapArrowleft18() {
    Get.back();
  }
}
