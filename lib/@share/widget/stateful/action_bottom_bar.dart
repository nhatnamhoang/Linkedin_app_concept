import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/action_post_button.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';

class ActionBottomBar extends StatefulWidget {
  const ActionBottomBar({Key? key}) : super(key: key);

  @override
  _ActionBottomBarState createState() => _ActionBottomBarState();
}

class _ActionBottomBarState extends State<ActionBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: widthScreen(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionPostButton(icon: AppImages.icLike, text: "Recomendar",),
          ActionPostButton(icon: AppImages.icComment, text: "Comentar",),
          ActionPostButton(icon: AppImages.icShare, text: "Compartir",)
        ],
      ),
    );
  }
}
