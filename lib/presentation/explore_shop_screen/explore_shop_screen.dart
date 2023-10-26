import '../explore_shop_screen/widgets/chipviewgroup1315_item_widget.dart';
import 'controller/explore_shop_controller.dart';
import 'models/chipviewgroup1315_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';

class ExploreShopScreen extends GetWidget<ExploreShopController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10002,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(192),
                          child: Text("msg_what_products_y".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium26)),
                      Container(
                          width: getHorizontalSize(294),
                          margin: getMargin(top: 13, right: 49),
                          child: Text("msg_choose_which_yo".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      Padding(
                          padding: getPadding(top: 35, bottom: 5),
                          child: Obx(() => Wrap(
                              runSpacing: getVerticalSize(5),
                              spacing: getHorizontalSize(5),
                              children: List<Widget>.generate(
                                  controller
                                      .exploreShopModelObj
                                      .value
                                      .chipviewgroup1315ItemList
                                      .value
                                      .length, (index) {
                                Chipviewgroup1315ItemModel model = controller
                                    .exploreShopModelObj
                                    .value
                                    .chipviewgroup1315ItemList
                                    .value[index];
                                return Chipviewgroup1315ItemWidget(model);
                              }))))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(52),
                text: "lbl_explore_shop".tr,
                margin: getMargin(left: 16, right: 16, bottom: 36),
                onTap: () {
                  onTapExploreshop();
                })));
  }

  onTapExploreshop() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
