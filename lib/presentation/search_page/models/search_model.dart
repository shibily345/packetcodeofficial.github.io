import 'package:get/get.dart';
import 'search_item_model.dart';

class SearchModel {
  Rx<List<SearchItemModel>> searchItemList =
      Rx(List.generate(3, (index) => SearchItemModel()));
}
