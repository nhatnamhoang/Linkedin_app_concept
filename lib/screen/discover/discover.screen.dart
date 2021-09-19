import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/@share/widget/stateful/list_recommend.dart';
import 'package:linkedin_app_concept/@share/widget/stateful/list_tag.dart';
import 'package:linkedin_app_concept/@share/widget/stateful/search_custom_field.dart';
import 'package:linkedin_app_concept/@share/widget/stateless/header_account.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';
import 'discover.controller.dart';

class DiscoverScreen extends GetView<DiscoverController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderAccount(),
          heightSpace(22),
          SearchCustomField(
            icon: AppImages.icSearch,
            hintText: 'Buscar empleos',
          ),
          heightSpace(17),
          ListTag(),
          _buildTitleHead(),
          heightSpace(17),
          ListRecommend()
        ],
      ),
    );
  }

  Widget _buildTitleHead() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 30),
        child: Text(
          "Recomendados",
          style: AppStyles()
              .typeRoboto(18, AppColors.textTitleHead)
              .copyWith(fontWeight: FontWeight.bold),
        ),
      );
}
