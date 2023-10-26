import '../controller/explore_shop_controller.dart';
import 'package:get/get.dart';

class ExploreShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreShopController());
  }
}
