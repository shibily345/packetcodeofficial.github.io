import '../controller/discount_items_controller.dart';
import '../models/discountitems_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mohamed_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class DiscountitemsItemWidget extends StatelessWidget {
  DiscountitemsItemWidget(this.discountitemsItemModelObj,
      {this.onTapRowunsplashqnuur0o5xeight});

  DiscountitemsItemModel discountitemsItemModelObj;

  var controller = Get.find<DiscountItemsController>();

  VoidCallback? onTapRowunsplashqnuur0o5xeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowunsplashqnuur0o5xeight?.call();
      },
      child: Container(
        padding: getPadding(
          left: 10,
          top: 8,
          right: 10,
          bottom: 8,
        ),
        decoration: AppDecoration.fillGray10001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnsplashqnuur0o5x858x586,
              height: getSize(
                58,
              ),
              width: getSize(
                58,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  10,
                ),
              ),
              margin: getMargin(
                top: 2,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 17,
                top: 2,
                bottom: 7,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      discountitemsItemModelObj.offerTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular15Black900,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 17,
                    ),
                    child: RatingBar.builder(
                      initialRating: 5,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemSize: getVerticalSize(
                        9,
                      ),
                      itemCount: 5,
                      updateOnDrag: true,
                      onRatingUpdate: (rating) {},
                      itemBuilder: (context, _) {
                        return Icon(
                          Icons.star,
                          color: ColorConstant.amber400,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgArrowrightBlack900,
              height: getSize(
                16,
              ),
              width: getSize(
                16,
              ),
              margin: getMargin(
                top: 22,
                right: 6,
                bottom: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
