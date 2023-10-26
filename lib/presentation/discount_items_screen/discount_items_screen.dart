import '../discount_items_screen/widgets/discountitems_item_widget.dart';
import 'controller/discount_items_controller.dart';
import 'models/discountitems_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';

class DiscountItemsScreen extends GetWidget<DiscountItemsController> {
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
                      onTapArrowleft17();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_discount_items".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 24, right: 16),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(14));
                    },
                    itemCount: controller.discountItemsModelObj.value
                        .discountitemsItemList.value.length,
                    itemBuilder: (context, index) {
                      DiscountitemsItemModel model = controller
                          .discountItemsModelObj
                          .value
                          .discountitemsItemList
                          .value[index];
                      return DiscountitemsItemWidget(model,
                          onTapRowunsplashqnuur0o5xeight: () {
                        onTapRowunsplashqnuur0o5xeight();
                      });
                    })))));
  }

  onTapRowunsplashqnuur0o5xeight() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  onTapArrowleft17() {
    Get.back();
  }
}
