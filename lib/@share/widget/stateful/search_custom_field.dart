import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/@share/utils/util.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/images.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';

import '../custom_text_field.dart';

class SearchCustomField extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? icon;
  const SearchCustomField(
      {Key? key, required this.hintText, required this.icon, this.controller})
      : super(key: key);

  @override
  _SearchCustomFieldState createState() => _SearchCustomFieldState();
}

class _SearchCustomFieldState extends State<SearchCustomField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Flexible(
            flex: 6,
            child: CustomTextField(
              borderRadius: BorderRadius.circular(10),
              backgroundColor: AppColors.searchBackGround,
              cursorColor: AppColors.mainColor,
              hintText: widget.hintText!,
              styleHintText: AppStyles()
                  .typeRoboto(16, AppColors.grey)
                  .copyWith(fontWeight: FontWeight.w400),
              controller: widget.controller,
            ),
          ),
          widthSpace(10),
          Flexible(
            flex: 1,
            child: _buildIconFilter(),
          )
        ],
      ),
    );
  }

  Widget _buildIconFilter() => Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.searchBackGround,
        ),
        child: Image.asset(
          AppImages.icFilter,
          fit: BoxFit.contain,
        ),
      );
}
