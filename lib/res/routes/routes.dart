import 'package:get/get.dart';
import 'package:sweat_squad/res/components/bottom_bar.dart';
import 'package:sweat_squad/res/routes/routes_name.dart';
import 'package:sweat_squad/view/login/login_view.dart';
import 'package:sweat_squad/view/reset/reset_password_view.dart';
import 'package:sweat_squad/view/signup/signup_view.dart';
import 'package:sweat_squad/view/splash/splash_view.dart';

class Routes {
  static getRoute() => [
        GetPage(
          name: RoutesName.splash,
          page: () => const SplashView(),
        ),
        GetPage(
          name: RoutesName.login,
          page: () => LoginView(),
        ),
        GetPage(
          name: RoutesName.signup,
          page: () => SignupView(),
        ),
        GetPage(
          name: RoutesName.bottomBar,
          page: () => const BottomBar(),
        ),
        GetPage(
          name: RoutesName.reset,
          page: () => const ResetPasswordView(),
        ),
      ];
}
