import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/my_cart_page/models/my_cart_model.dart';

class MyCartController extends GetxController {
  MyCartController(this.myCartModelObj);

  Rx<MyCartModel> myCartModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
