import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/order_status_screen/models/order_status_model.dart';

class OrderStatusController extends GetxController {
  Rx<OrderStatusModel> orderStatusModelObj = OrderStatusModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
