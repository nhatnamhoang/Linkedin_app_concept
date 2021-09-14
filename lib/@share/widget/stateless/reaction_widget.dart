import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

class ReactionWidget extends StatelessWidget {
  const ReactionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        children: [
          Container(
            width: 20,
            child: Stack(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: AppColors.redHeart,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Center(
                    child: Image.asset(AppImages.icHeart),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 8,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: AppColors.greyLike,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Center(
                      child: Image.asset(
                        AppImages.icLikeAction,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          widthSpace(2.7),
          Text(
            '25',
            style: AppStyles()
                .typeRoboto(9, AppColors.textSecondaryColor)
                .copyWith(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
