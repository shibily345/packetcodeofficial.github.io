import '../controller/order_status_controller.dart';
import 'package:get/get.dart';

class OrderStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderStatusController());
  }
}
