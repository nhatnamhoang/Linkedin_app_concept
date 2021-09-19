import 'package:linkedin_app_concept/screen/profile/profile.controller.dart';
import 'package:linkedin_app_concept/screen/splash/splash.controller.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}
