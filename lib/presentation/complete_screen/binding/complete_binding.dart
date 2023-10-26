import '../controller/complete_controller.dart';
import 'package:get/get.dart';

class CompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteController());
  }
}
