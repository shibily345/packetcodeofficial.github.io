import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/discount_items_screen/models/discount_items_model.dart';

class DiscountItemsController extends GetxController {
  Rx<DiscountItemsModel> discountItemsModelObj = DiscountItemsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
