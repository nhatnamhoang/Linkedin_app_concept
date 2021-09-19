import 'package:get/get.dart';
import 'package:linkedin_app_concept/screen/discover/discover.controller.dart';

class DiscoverBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DiscoverController());
  }
}
