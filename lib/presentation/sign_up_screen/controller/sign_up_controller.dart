import 'package:mohamed_s_application2/core/app_export.dart';
import 'package:mohamed_s_application2/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application2/data/models/register/post_register_resp.dart';
import 'package:mohamed_s_application2/data/apiClient/api_client.dart';

class SignUpController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController nameOneController = TextEditingController();

  TextEditingController group964Controller = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  PostRegisterResp postRegisterResp = PostRegisterResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    nameOneController.dispose();
    group964Controller.dispose();
  }

  Future<void> callCreateRegister(Map req) async {
    try {
      postRegisterResp = await Get.find<ApiClient>().createRegister(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleCreateRegisterSuccess();
    } on PostRegisterResp catch (e) {
      postRegisterResp = e;
      rethrow;
    }
  }

  void _handleCreateRegisterSuccess() {
    Get.find<PrefUtils>().setId(postRegisterResp.data!.id!.toString());
  }
}
