import '../controller/discount_items_controller.dart';
import 'package:get/get.dart';

class DiscountItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscountItemsController());
  }
}
