import '../order_status_screen/widgets/orderstatus_item_widget.dart';
import 'controller/order_status_controller.dart';
import 'models/orderstatus_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mohamed_s_application2/widgets/custom_button.dart';

class OrderStatusScreen extends GetWidget<OrderStatusController> {
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
                      onTapArrowleft12();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_order_status".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath:
                              ImageConstant.imgUnsplashvfrcrteqkl8227x343,
                          height: getVerticalSize(227),
                          width: getHorizontalSize(343),
                          radius: BorderRadius.only(
                              topLeft: Radius.circular(getHorizontalSize(12)),
                              topRight: Radius.circular(getHorizontalSize(12))),
                          margin: getMargin(top: 4)),
                      Container(
                          padding: getPadding(
                              left: 30, top: 9, right: 30, bottom: 9),
                          decoration: AppDecoration.fillBlack900.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL12),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClock30x30,
                                    height: getSize(30),
                                    width: getSize(30),
                                    margin: getMargin(top: 7, bottom: 6)),
                                Padding(
                                    padding: getPadding(left: 16, bottom: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_delivered".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular16WhiteA700),
                                          Text("msg_drinks_june_07".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsLight12)
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 39, top: 24, right: 133),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(5));
                              },
                              itemCount: controller.orderStatusModelObj.value
                                  .orderstatusItemList.value.length,
                              itemBuilder: (context, index) {
                                OrderstatusItemModel model = controller
                                    .orderStatusModelObj
                                    .value
                                    .orderstatusItemList
                                    .value[index];
                                return OrderstatusItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(52),
                text: "msg_confirm_deliver".tr,
                margin: getMargin(left: 16, right: 16, bottom: 21),
                onTap: () {
                  onTapConfirmdeliveryOne();
                })));
  }

  onTapConfirmdeliveryOne() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapArrowleft12() {
    Get.back();
  }
}
