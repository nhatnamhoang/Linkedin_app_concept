import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

class ListTag extends StatefulWidget {
  const ListTag({Key? key}) : super(key: key);

  @override
  _ListTagState createState() => _ListTagState();
}

class _ListTagState extends State<ListTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18),
      width: widthScreen(),
      height: 31,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          child: _buildItemTag(),
        ),
      ),
    );
  }

  Widget _buildItemTag() => Container(
        margin: const EdgeInsets.only(left: 6),
        padding: const EdgeInsets.symmetric(horizontal: 24.5, vertical: 8.5),
        decoration: BoxDecoration(
          color: AppColors.blueOpacity,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Text(
          "Empleos",
          style: AppStyles()
              .typeRoboto(12, AppColors.textTag)
              .copyWith(fontWeight: FontWeight.w400),
        ),
      );
}
