import 'package:get/get.dart';
import 'orderstatus_item_model.dart';

class OrderStatusModel {
  Rx<List<OrderstatusItemModel>> orderstatusItemList =
      Rx(List.generate(3, (index) => OrderstatusItemModel()));
}
