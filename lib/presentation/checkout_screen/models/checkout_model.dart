import 'package:get/get.dart';
import 'checkout_item_model.dart';

class CheckoutModel {
  Rx<List<CheckoutItemModel>> checkoutItemList =
      Rx(List.generate(4, (index) => CheckoutItemModel()));
}
