import 'package:linkedin_app_concept/@share/widget/scaffold.widget.dart';
import 'package:linkedin_app_concept/screen/splash/splash.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleAppBar: "Demo Linkedin App",
      body: Text("body"),
    );
  }
}
