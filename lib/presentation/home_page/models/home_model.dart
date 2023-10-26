import 'package:get/get.dart';
import 'listgroup_item_model.dart';
import 'listunsplashemlkhdeydhg_item_model.dart';
import 'listunsplashzhh3wm2ko3s_item_model.dart';

class HomeModel {
  Rx<List<ListgroupItemModel>> listgroupItemList =
      Rx(List.generate(5, (index) => ListgroupItemModel()));

  Rx<List<ListunsplashemlkhdeydhgItemModel>> listunsplashemlkhdeydhgItemList =
      Rx(List.generate(3, (index) => ListunsplashemlkhdeydhgItemModel()));

  Rx<List<Listunsplashzhh3wm2ko3sItemModel>> listunsplashzhh3wm2ko3sItemList =
      Rx(List.generate(3, (index) => Listunsplashzhh3wm2ko3sItemModel()));
}
