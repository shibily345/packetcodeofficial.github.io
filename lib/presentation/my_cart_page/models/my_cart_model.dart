import 'package:get/get.dart';
import 'mycart_item_model.dart';

class MyCartModel {
  Rx<List<MycartItemModel>> mycartItemList =
      Rx(List.generate(2, (index) => MycartItemModel()));
}
