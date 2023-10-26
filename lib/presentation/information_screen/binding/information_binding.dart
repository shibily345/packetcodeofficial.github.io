import '../controller/information_controller.dart';
import 'package:get/get.dart';

class InformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InformationController());
  }
}
