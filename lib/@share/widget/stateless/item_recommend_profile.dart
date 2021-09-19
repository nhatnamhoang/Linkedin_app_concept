import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import '../network_circle_avatar.dart';
import 'filled_round_button.dart';

class ItemRecommendProfile extends StatelessWidget {
  const ItemRecommendProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: widthScreen(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 75, vertical: 21.1),
              margin: const EdgeInsets.only(bottom: 16, top: 10),
              decoration: BoxDecoration(
                color: AppColors.textTitleHead,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  heightSpace(25),
                  Text(
                    "Prueba premium para ver empleos con más Posibilidades de ser aceptado",
                    textAlign: TextAlign.center,
                    style: AppStyles()
                        .typeRoboto(10, AppColors.white)
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  heightSpace(14),
                  _btnSubmit()
                ],
              ),
            ),
            _buildCloseButton(),
            _buildUserAvatar(),
          ],
        ),
      ],
    );
  }

  Widget _buildUserAvatar() => Align(
        alignment: Alignment.topCenter,
        child: NetworkCircleAvatar(
          avatarUrl: "https://i.ibb.co/VS7X2H1/austin-wade-X6-Uj51n5-CE8-unsplash.png",
          width: 45,
          boxShadow: BoxShadow(
            color: Colors.white.withOpacity(0.23),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ),
      );



  Widget _btnSubmit() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 30,
      child: FilledRoundButton.withColor(
        onTap: () => {},
        pureColor: AppColors.mainColor,
        radius: 17,
        text: Text(
          "Pruébalo gratis por 1 mes",
          style: AppStyles()
              .typeRoboto(9, AppColors.white)
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }


  Widget _buildCloseButton() => Positioned(
    top: 31,
    right: 16,
    child: Container(
      child: Image.asset(AppImages.icClose),
    ),
  );
}
