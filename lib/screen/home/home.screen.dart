import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/@share/widget/scaffold.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_app_concept/@share/widget/stateful/list_friends.dart';
import 'package:linkedin_app_concept/@share/widget/stateful/list_post.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/header_account.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import 'home.controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderAccount(),
            heightSpace(24),
            ListFriends(),
            _buildTitleHead(),
            ListPost()
          ],
        ),
      ),
    );
  }

  Widget _buildTitleHead() => Container(
    margin: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 29.5),
    child: Text(
          "Noticias",
          style:
              AppStyles().typeRoboto(20).copyWith(fontWeight: FontWeight.bold),
        ),
      );
}
