import 'package:get/get.dart';
import 'package:sweat_squad/res/routes/routes_name.dart';
import 'package:sweat_squad/view/login/login_view.dart';
import 'package:sweat_squad/view/signup/signup_view.dart';

class Routes {
  static getRoute() => [
        GetPage(
          name: RoutesName.login,
          page: () => const LoginView(),
        ),
        GetPage(
          name: RoutesName.signup,
          page: () => SignupView(),
        ),
      ];
}
