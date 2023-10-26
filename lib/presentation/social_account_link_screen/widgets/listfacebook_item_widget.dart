import '../controller/social_account_link_controller.dart';
import '../models/listfacebook_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListfacebookItemWidget extends StatelessWidget {
  ListfacebookItemWidget(this.listfacebookItemModelObj, {this.onTapImgLink});

  ListfacebookItemModel listfacebookItemModelObj;

  var controller = Get.find<SocialAccountLinkController>();

  VoidCallback? onTapImgLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 18,
        right: 16,
        bottom: 18,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFacebook,
            height: getSize(
              40,
            ),
            width: getSize(
              40,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listfacebookItemModelObj.nameTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular15Black900,
                  ),
                ),
                Obx(
                  () => Text(
                    listfacebookItemModelObj.messageTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular11,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgLink,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              top: 8,
              bottom: 8,
            ),
            onTap: () {
              onTapImgLink?.call();
            },
          ),
        ],
      ),
    );
  }
}
