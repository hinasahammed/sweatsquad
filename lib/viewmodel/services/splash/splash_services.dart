import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sweat_squad/res/routes/routes_name.dart';

class SplashServices {
  static void checkUserLogedIn() async {
    final pref = await SharedPreferences.getInstance();
    var token = pref.getString('Auth_token');
    if (token != null) {
      Get.offAllNamed(RoutesName.bottomBar);
    } else {
      Get.offAllNamed(RoutesName.login);
    }
  }
}
