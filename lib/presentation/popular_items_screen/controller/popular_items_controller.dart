import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/popular_items_screen/models/popular_items_model.dart';

class PopularItemsController extends GetxController {
  Rx<PopularItemsModel> popularItemsModelObj = PopularItemsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
