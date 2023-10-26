import '../notification_screen/widgets/listtime1_item_widget.dart';
import '../notification_screen/widgets/listtime_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/listtime1_item_model.dart';
import 'models/listtime_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
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
                      onTapArrowleft16();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_notifications".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_today".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium18Black900),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.notificationModelObj.value
                                  .listtimeItemList.value.length,
                              itemBuilder: (context, index) {
                                ListtimeItemModel model = controller
                                    .notificationModelObj
                                    .value
                                    .listtimeItemList
                                    .value[index];
                                return ListtimeItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.notificationModelObj.value
                                  .listtime1ItemList.value.length,
                              itemBuilder: (context, index) {
                                Listtime1ItemModel model = controller
                                    .notificationModelObj
                                    .value
                                    .listtime1ItemList
                                    .value[index];
                                return Listtime1ItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
