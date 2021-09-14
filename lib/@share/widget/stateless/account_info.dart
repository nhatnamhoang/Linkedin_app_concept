import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import '../network_circle_avatar.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NetworkCircleAvatar(
          avatarUrl: "https://i.ibb.co/HqBs6tM/user-avatar.png",
          width: 36,
        ),
        widthSpace(17),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Román Guinto",
              style: AppStyles()
                  .typeRoboto(15)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            heightSpace(6),
            Text(
              "Frontend developer".toUpperCase(),
              style: AppStyles()
                  .typeRoboto(9)
                  .copyWith(fontWeight: FontWeight.w400),
            )
          ],
        )
      ],
    );
  }
}
