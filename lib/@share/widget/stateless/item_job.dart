import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

class ItemJob extends StatelessWidget {
  const ItemJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLogo(),
          widthSpace(18),
          Expanded(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 4.2, vertical: 19.1),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(16.0),
      ),
      border: Border.all(color: AppColors.greyBorder)
    ),
    child: Image.asset(AppImages.logoCompany),
  );

  Widget _buildContent() => Container(
    margin: const EdgeInsets.only(right: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Universidad tecnológica de la costa grande de guerrero",
          style: AppStyles()
              .typeRoboto(12, AppColors.textBlueDeepContent)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        heightSpace(5),
        Text(
          "Tecnología de la información",
          style: AppStyles()
              .typeRoboto(10, AppColors.mainColor)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        heightSpace(7),
        Container(
          width: widthScreen(percent: 65),
          child: Text(
            "2018 - 2020",
            style: AppStyles()
                .typeRoboto(10, AppColors.textSearch)
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        heightSpace(12),
      ],
    ),
  );

}
