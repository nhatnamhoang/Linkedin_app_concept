import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@core/router/pages.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import '../network_circle_avatar.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => goTo(screen: ROUTER_PROFILE),
          child: NetworkCircleAvatar(
            avatarUrl: "https://i.ibb.co/VS7X2H1/austin-wade-X6-Uj51n5-CE8-unsplash.png",
            width: 36,
          ),
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
