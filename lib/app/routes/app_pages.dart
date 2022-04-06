import 'package:get/get.dart';

import 'package:samplelogin/app/modules/Splash/views/splash_view.dart';
import 'package:samplelogin/app/modules/home/views/home_view.dart';
import 'package:samplelogin/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
    ),
  ];
}
