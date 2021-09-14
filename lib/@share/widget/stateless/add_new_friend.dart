import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

class AddNewFriend extends StatelessWidget {
  const AddNewFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20.8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.mainColor),
            color: Colors.white,
          ),
          child: Image.asset(AppImages.icPlus),
        ),
        heightSpace(11),
        Text(
          "Crear historia",
          style: AppStyles()
              .typeRoboto(10, AppColors.textSecondaryColor)
              .copyWith(fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
