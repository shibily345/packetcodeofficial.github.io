import '../controller/product_view_controller.dart';
import 'package:get/get.dart';

class ProductViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductViewController());
  }
}
