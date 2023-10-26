import '../home_page/widgets/listgroup_item_widget.dart';
import '../home_page/widgets/listunsplashemlkhdeydhg_item_widget.dart';
import '../home_page/widgets/listunsplashzhh3wm2ko3s_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/listgroup_item_model.dart';
import 'models/listunsplashemlkhdeydhg_item_model.dart';
import 'models/listunsplashzhh3wm2ko3s_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(37),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgComputer,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 24, right: 16),
                      onTap: () {
                        onTapNotification();
                      })
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 40, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_find_your_style".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold24)),
                              Container(
                                  height: getVerticalSize(51),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(top: 18),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .listgroupItemList.value.length,
                                      itemBuilder: (context, index) {
                                        ListgroupItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .listgroupItemList
                                            .value[index];
                                        return ListgroupItemWidget(model);
                                      }))),
                              Container(
                                  height: getVerticalSize(327),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(top: 31),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: controller
                                          .homeModelObj
                                          .value
                                          .listunsplashemlkhdeydhgItemList
                                          .value
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListunsplashemlkhdeydhgItemModel model =
                                            controller
                                                .homeModelObj
                                                .value
                                                .listunsplashemlkhdeydhgItemList
                                                .value[index];
                                        return ListunsplashemlkhdeydhgItemWidget(
                                            model,
                                            onTapColumnunsplashemlkhdeydhg: () {
                                          onTapColumnunsplashemlkhdeydhg();
                                        });
                                      }))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 29, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_populer_items".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium18Black900),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSeeAll();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 4),
                                                    child: Text(
                                                        "lbl_see_all".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium14Orange700)))
                                          ]))),
                              Container(
                                  height: getVerticalSize(263),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(top: 9),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: controller
                                          .homeModelObj
                                          .value
                                          .listunsplashzhh3wm2ko3sItemList
                                          .value
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listunsplashzhh3wm2ko3sItemModel model =
                                            controller
                                                .homeModelObj
                                                .value
                                                .listunsplashzhh3wm2ko3sItemList
                                                .value[index];
                                        return Listunsplashzhh3wm2ko3sItemWidget(
                                            model,
                                            onTapColumnunsplashzhh3wm2ko3s: () {
                                          onTapColumnunsplashzhh3wm2ko3s();
                                        });
                                      })))
                            ]))))));
  }

  onTapColumnunsplashzhh3wm2ko3s() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  onTapColumnunsplashemlkhdeydhg() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.popularItemsScreen,
    );
  }

  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
