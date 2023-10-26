import '../controller/tracking_order_controller.dart';
import 'package:get/get.dart';

class TrackingOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackingOrderController());
  }
}
