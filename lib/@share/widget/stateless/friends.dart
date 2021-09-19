import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import '../network_circle_avatar.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 21, right: 90),
      child: Row(
        children: [
          _buildItemsAvatarUser(),
          Flexible(
            child: Text(
              '3 contactos en comun:  Ricardo Pinovery , Efrain granados y 1 persona más',
              style: AppStyles().typeRoboto(10, AppColors.textBlueDeepContent),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItemsAvatarUser() => Container(
        width: 60,
        child: Stack(
          children: [
            NetworkCircleAvatar(
              avatarUrl:
                  "https://i.ibb.co/VS7X2H1/austin-wade-X6-Uj51n5-CE8-unsplash.png",
              width: 28,
            ),
            Positioned(
              top: 0,
              right: 13,
              child: NetworkCircleAvatar(
                avatarUrl:
                    "https://i.ibb.co/VS7X2H1/austin-wade-X6-Uj51n5-CE8-unsplash.png",
                width: 28,
              ),
            )
          ],
        ),
      );
}
