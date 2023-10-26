import '../popular_items_screen/widgets/popularitems_item_widget.dart';
import 'controller/popular_items_controller.dart';
import 'models/popularitems_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';

class PopularItemsScreen extends GetWidget<PopularItemsController> {
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
                      onTapArrowleft8();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_popular_items".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 13))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 24, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(255),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.popularItemsModelObj.value
                        .popularitemsItemList.value.length,
                    itemBuilder: (context, index) {
                      PopularitemsItemModel model = controller
                          .popularItemsModelObj
                          .value
                          .popularitemsItemList
                          .value[index];
                      return PopularitemsItemWidget(model,
                          onTapColumnunsplashzhh3wm2ko3s: () {
                        onTapColumnunsplashzhh3wm2ko3s();
                      });
                    })))));
  }

  onTapColumnunsplashzhh3wm2ko3s() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  onTapArrowleft8() {
    Get.back();
  }
}
