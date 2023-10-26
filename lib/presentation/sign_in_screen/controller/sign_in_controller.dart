import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/data/models/login/post_login_resp.dart';
import 'package:mohamed_s_application2/data/apiClient/api_client.dart';

class SignInController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController group963Controller = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  PostLoginResp postLoginResp = PostLoginResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    group963Controller.dispose();
  }

  Future<void> callCreateLogin(Map req) async {
    try {
      postLoginResp = await Get.find<ApiClient>().createLogin(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleCreateLoginSuccess();
    } on PostLoginResp catch (e) {
      postLoginResp = e;
      rethrow;
    }
  }

  void _handleCreateLoginSuccess() {
    Get.find<PrefUtils>().setToken(postLoginResp.data!.token!.toString());
  }
}
