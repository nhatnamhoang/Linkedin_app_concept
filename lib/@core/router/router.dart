import 'package:linkedin_app_concept/@core/router/pages.dart';
import 'package:linkedin_app_concept/screen/home/home.binding.dart';
import 'package:linkedin_app_concept/screen/home/home.screen.dart';
import 'package:linkedin_app_concept/screen/profile/profile.binding.dart';
import 'package:linkedin_app_concept/screen/profile/profile.screen.dart';
import 'package:linkedin_app_concept/screen/splash/splash.binding.dart';
import 'package:linkedin_app_concept/screen/splash/splash.screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Routers {
  static final route = [
    GetPage(name: ROUTER_SPLASH, page: () => SplashScreen(), binding: SplashBinding()),
    GetPage(name: ROUTER_HOME, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(name: ROUTER_PROFILE, page: () => ProfileScreen(), binding: ProfileBinding()),
  ];
}
