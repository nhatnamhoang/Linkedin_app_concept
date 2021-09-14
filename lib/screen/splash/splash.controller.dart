import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_app_concept/@core/router/pages.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    Future.delayed(
      Duration(seconds: 3),
      () => goToAndRemoveAll(screen: ROUTER_HOME),
    );
    super.onReady();
  }
}
