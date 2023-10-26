import 'package:get/get.dart';
import 'discountitems_item_model.dart';

class DiscountItemsModel {
  Rx<List<DiscountitemsItemModel>> discountitemsItemList =
      Rx(List.generate(5, (index) => DiscountitemsItemModel()));
}
