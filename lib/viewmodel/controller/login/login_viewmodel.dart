import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sweat_squad/data/response/status.dart';
import 'package:sweat_squad/repo/loginRepo/login_repo.dart';
import 'package:sweat_squad/res/routes/routes_name.dart';
import 'package:sweat_squad/utils/utils.dart';

class LoginViewmodel extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final reqStatusResponse = Status.completed.obs;
  final repo = LoginRepository();

  setReqStatusResponse(Status status) {
    reqStatusResponse.value = status;
  }

  void login(BuildContext context) async {
    final pref = await SharedPreferences.getInstance();
    setReqStatusResponse(Status.loading);
    await repo.login({
      "email": emailController.value.text,
      "password": passwordController.value.text,
    }).then((value) {
      emailController.value.clear();
      passwordController.value.clear();
      if (value['token'] != null) {
        pref.setString('Auth_token', value['token']);
      }
      Get.offAllNamed(RoutesName.bottomBar);
      Utils.showSnackbarToast(context, 'Login successfull', Icons.check_circle);
    }).onError((error, stackTrace) {
      Utils.showSnackbarToast(context, error.toString(), Icons.error);
    }).whenComplete(() {
      setReqStatusResponse(Status.completed);
    });
  }
}
