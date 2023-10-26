import '../controller/onbording_two_controller.dart';
import 'package:get/get.dart';

class OnbordingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingTwoController());
  }
}
