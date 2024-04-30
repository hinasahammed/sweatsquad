import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweat_squad/utils/utils.dart';

class SignupViewmodel extends GetxController {
  final auth = FirebaseAuth.instance;
  final userNameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;
  final selectedImage = File('').obs;

  void registerUser(BuildContext context) async {
    // setReqStatusResponse(Status.loading);
    try {
      await auth
          .createUserWithEmailAndPassword(
        email: emailController.value.text,
        password: confirmPasswordController.value.text,
      )
          .then(
        (value) {
          // addUserData();

          // Get.toNamed(RoutesName.login);
          Utils.showSnackbarToast(
            context,
            "Account created successfully, now try to login.",
            Icons.check_circle_rounded,
          );
        },
      );
      // setReqStatusResponse(Status.completed);
    } on FirebaseAuthException catch (error) {
      // setReqStatusResponse(Status.error);
      if (error.code == 'email-already-in-use') {
        if (context.mounted) {
          Utils.showSnackbarToast(
            context,
            "The email address is already in use by another account.",
            Icons.error,
          );
        }
      } else if (error.code == 'invalid-email') {
        if (context.mounted) {
          Utils.showSnackbarToast(
            context,
            "The email address is address not valid.",
            Icons.error,
          );
        }
      } else if (error.code == 'operation-not-allowed') {
        if (context.mounted) {
          Utils.showSnackbarToast(
            context,
            "Something went wrong.",
            Icons.error,
          );
        }
      } else if (error.code == 'weak-password') {
        if (context.mounted) {
          Utils.showSnackbarToast(
            context,
            "The password is not strong enough.",
            Icons.error,
          );
        }
      } else {
        if (context.mounted) {
          Utils.showSnackbarToast(
            context,
            "Something went wrong.",
            Icons.error,
          );
        }
      }
    }
  }
}
