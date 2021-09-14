import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

class ActionPostButton extends StatelessWidget {
  final String? icon;
  final String? text;
  const ActionPostButton({Key? key, @required this.icon, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(icon!),
          widthSpace(7),
          Text(
            text!,
            style: AppStyles()
                .typeRoboto(11, AppColors.textThirdColor)
                .copyWith(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
