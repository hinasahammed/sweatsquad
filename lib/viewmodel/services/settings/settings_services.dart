import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sweat_squad/res/routes/routes_name.dart';
import 'package:sweat_squad/utils/utils.dart';

class SettingsServices {
  static void confirmLogout(BuildContext context) async {
    final pref = await SharedPreferences.getInstance();
    if (context.mounted) {
      Utils.showDialog(
        context,
        () {
          pref.remove("Auth_token").whenComplete(() {
            Get.toNamed(RoutesName.login);
          });
        },
        DialogType.question,
        'Logout',
        "Are you want to logout?",
      );
    }
  }
}
