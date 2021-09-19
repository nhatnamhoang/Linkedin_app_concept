import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_app_concept/@core/router/pages.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';

class ProfileController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;

  var indexTab = 0.obs;

  updateIndexTab(val) {
    indexTab.value = val;
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
