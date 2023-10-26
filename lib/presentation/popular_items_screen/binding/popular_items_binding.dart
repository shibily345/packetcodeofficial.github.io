import '../controller/popular_items_controller.dart';
import 'package:get/get.dart';

class PopularItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopularItemsController());
  }
}
