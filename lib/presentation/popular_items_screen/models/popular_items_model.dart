import 'package:get/get.dart';
import 'popularitems_item_model.dart';

class PopularItemsModel {
  Rx<List<PopularitemsItemModel>> popularitemsItemList =
      Rx(List.generate(4, (index) => PopularitemsItemModel()));
}
