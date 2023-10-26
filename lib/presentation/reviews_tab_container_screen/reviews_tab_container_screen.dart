import 'controller/reviews_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/reviews_page/reviews_page.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:mohamed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohamed_s_application2/widgets/app_bar/custom_app_bar.dart';

class ReviewsTabContainerScreen
    extends GetWidget<ReviewsTabContainerController> {
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
                      onTapArrowleft13();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_reviews".tr)),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(52),
                          width: getHorizontalSize(343),
                          margin: getMargin(top: 24),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(10))),
                          child: TabBar(
                              controller: controller.group18Controller,
                              labelColor: ColorConstant.whiteA700,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(16),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                              unselectedLabelColor: ColorConstant.black900,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(16),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                              indicator: BoxDecoration(
                                  color: ColorConstant.black900,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10))),
                              tabs: [
                                Tab(
                                    child: Text("lbl_positive".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_negetive".tr,
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(642),
                          child: TabBarView(
                              controller: controller.group18Controller,
                              children: [ReviewsPage(), ReviewsPage()]))
                    ]))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
