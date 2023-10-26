import '../controller/checkout_controller.dart';
import '../models/checkout_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CheckoutItemWidget extends StatelessWidget {
  CheckoutItemWidget(this.checkoutItemModelObj);

  CheckoutItemModel checkoutItemModelObj;

  var controller = Get.find<CheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 24,
        top: 14,
        right: 24,
        bottom: 14,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: getPadding(
              top: 9,
              bottom: 9,
            ),
            decoration: AppDecoration.fillGray10001,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgVolume,
                  height: getVerticalSize(
                    19,
                  ),
                  width: getHorizontalSize(
                    32,
                  ),
                  margin: getMargin(
                    top: 2,
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 26,
                  ),
                  child: Obx(
                    () => Text(
                      checkoutItemModelObj.creditCardTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgContrast,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              top: 10,
              bottom: 10,
            ),
          ),
        ],
      ),
    );
  }
}
