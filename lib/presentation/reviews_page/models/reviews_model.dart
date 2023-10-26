import 'package:get/get.dart';
import 'listrating_item_model.dart';
import 'listdatatype_item_model.dart';

class ReviewsModel {
  Rx<List<ListratingItemModel>> listratingItemList =
      Rx(List.generate(2, (index) => ListratingItemModel()));

  Rx<List<ListdatatypeItemModel>> listdatatypeItemList =
      Rx(List.generate(3, (index) => ListdatatypeItemModel()));
}
