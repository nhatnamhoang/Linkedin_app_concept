import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import '../network_circle_avatar.dart';
import 'account_info.dart';

class HeaderAccount extends StatelessWidget {
  const HeaderAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 67),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [AccountInfo(), _buildIcons()],
      ),
    );
  }

  Widget _buildIcons() => Row(
        children: [
          InkWell(
            onTap: () => print("search"),
            child: Image.asset(AppImages.icSearch),
          ),
          widthSpace(30),
          InkWell(
            onTap: () => print("message"),
            child: Image.asset(AppImages.icMessenger),
          )
        ],
      );
}
