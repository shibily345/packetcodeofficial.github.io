import 'package:get/get.dart';
import 'listfacebook_item_model.dart';

class SocialAccountLinkModel {
  Rx<List<ListfacebookItemModel>> listfacebookItemList =
      Rx(List.generate(4, (index) => ListfacebookItemModel()));
}
