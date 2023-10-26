import '../controller/social_account_link_controller.dart';
import 'package:get/get.dart';

class SocialAccountLinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialAccountLinkController());
  }
}
