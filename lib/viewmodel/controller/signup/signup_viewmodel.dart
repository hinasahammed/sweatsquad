import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupViewmodel extends GetxController {
  final userNameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;
  final selectedImage = File('').obs;

  
}
