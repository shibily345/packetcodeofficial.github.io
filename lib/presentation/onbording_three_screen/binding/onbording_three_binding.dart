import '../controller/onbording_three_controller.dart';
import 'package:get/get.dart';

class OnbordingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingThreeController());
  }
}
