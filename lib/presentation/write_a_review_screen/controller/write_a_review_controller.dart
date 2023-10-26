import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/write_a_review_screen/models/write_a_review_model.dart';
import 'package:flutter/material.dart';

class WriteAReviewController extends GetxController {
  TextEditingController group1367Controller = TextEditingController();

  Rx<WriteAReviewModel> writeAReviewModelObj = WriteAReviewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1367Controller.dispose();
  }
}
