import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/@share/widget/scaffold.widget.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/screen/splash/splash.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AppImages.imgSplash,
              ),
              alignment: Alignment(1.2, -0.5),
            ),
          ),
        ),
        Center(
          child: Image.asset(AppImages.logo),
        )
      ],
    );
  }
}
