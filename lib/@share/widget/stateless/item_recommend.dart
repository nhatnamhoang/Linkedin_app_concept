import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

class ItemRecommend extends StatelessWidget {
  const ItemRecommend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.4, vertical: 21.1),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
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
        padding: const EdgeInsets.symmetric(horizontal: 13.8, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Image.asset(AppImages.logoDistbis),
      );

  Widget _buildContent() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Senior UI/UX Designer",
                  style: AppStyles()
                      .typeRoboto(16, AppColors.textTitleHead)
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Image.asset(AppImages.icSave)
              ],
            ),
            heightSpace(10),
            Text(
              "Distbit.io",
              style: AppStyles()
                  .typeRoboto(12, AppColors.textBlueContent)
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            heightSpace(10),
            Container(
              width: widthScreen(percent: 65),
              child: Text(
                "A sports nutrition company is looking for a UI/UX Designer who will be responsible to create visually engaging…",
                style: AppStyles()
                    .typeRoboto(10, AppColors.textBlueDeepContent)
                    .copyWith(fontWeight: FontWeight.w300),
              ),
            ),
            heightSpace(12),
            Text(
              "Hace 2 semanas",
              style: AppStyles()
                  .typeRoboto(10, AppColors.mainColor)
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            heightSpace(17),
          ],
        ),
      );
}
