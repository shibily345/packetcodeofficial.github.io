import '../controller/sign_up_sign_in_controller.dart';
import 'package:get/get.dart';

class SignUpSignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpSignInController());
  }
}
