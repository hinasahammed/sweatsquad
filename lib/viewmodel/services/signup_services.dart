import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sweat_squad/utils/utils.dart';
import 'package:sweat_squad/viewmodel/controller/signup/signup_viewmodel.dart';

class SignupServices {
  final signupViewmodel = Get.put(SignupViewmodel());
  Future pickImage(BuildContext context) async {
    try {
      final imagePick = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
      );

      if (imagePick == null) {
        if (context.mounted) {
          return Utils.showSnackbarToast(
            context,
            'Pick image, You have to pick an image',
            Icons.error,
          );
        }
      }

      final imageTemp = File(imagePick!.path);

      signupViewmodel.selectedImage.value = imageTemp;
    } on PlatformException catch (e) {
      if (context.mounted) {
        return Utils.showSnackbarToast(
          context,
          e.toString(),
          Icons.error,
        );
      }
    }
  }
}
