import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweat_squad/data/response/status.dart';
import 'package:sweat_squad/repo/signupRepo/signup_repo.dart';
import 'package:sweat_squad/utils/utils.dart';

class SignupViewmodel extends GetxController {
  final userNameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;
  final selectedImage = File('').obs;
  final reqStatusResponse = Status.completed.obs;
  final repo = SignupRepository();

  setReqStatusResponse(Status status) {
    reqStatusResponse.value = status;
  }

  void signup(BuildContext context) async {
    setReqStatusResponse(Status.loading);

    await repo.postApi({
      "username": userNameController.value.text,
      "email": emailController.value.text,
      "password": passwordController.value.text,
    }).then((value) {
      userNameController.value.clear();
      emailController.value.clear();
      passwordController.value.clear();
      confirmPasswordController.value.clear();

      Utils.showSnackbarToast(context, value['message'], Icons.check_circle);
    }).onError((error, stackTrace) {
      Utils.showSnackbarToast(context, error.toString(), Icons.error);
    }).whenComplete(() {
      setReqStatusResponse(Status.completed);
    });
  }
}
