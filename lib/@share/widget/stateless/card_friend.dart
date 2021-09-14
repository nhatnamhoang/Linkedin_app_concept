import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import '../network_avatar.dart';

class CardFriend extends StatelessWidget {
  const CardFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25),
      child: Column(
        children: [
          NetworkAvatar(
            avatarUrl: "https://i.ibb.co/SxshjJ9/friend.png",
            width: 56,
            radius: 16,
          ),
          heightSpace(11),
          Text(
            "James",
            style: AppStyles()
                .typeRoboto(10, AppColors.textSecondaryColor)
                .copyWith(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
