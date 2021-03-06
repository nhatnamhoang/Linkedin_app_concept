import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  var pageController = PageController(viewportFraction: 1);

  late TabController tabController;

  var indexTab = 0.obs;

  updateIndexTab(val) {
    indexTab.value = val;
  }


  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
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
