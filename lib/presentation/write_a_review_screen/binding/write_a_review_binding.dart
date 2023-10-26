import '../controller/write_a_review_controller.dart';
import 'package:get/get.dart';

class WriteAReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteAReviewController());
  }
}
