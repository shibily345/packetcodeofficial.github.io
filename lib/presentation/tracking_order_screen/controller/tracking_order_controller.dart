import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/tracking_order_screen/models/tracking_order_model.dart';

class TrackingOrderController extends GetxController {
  Rx<TrackingOrderModel> trackingOrderModelObj = TrackingOrderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
