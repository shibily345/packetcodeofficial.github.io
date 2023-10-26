import '../controller/reviews_tab_container_controller.dart';
import 'package:get/get.dart';

class ReviewsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewsTabContainerController());
  }
}
