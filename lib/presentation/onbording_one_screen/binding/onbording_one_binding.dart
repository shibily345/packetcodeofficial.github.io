import '../controller/onbording_one_controller.dart';
import 'package:get/get.dart';

class OnbordingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingOneController());
  }
}
