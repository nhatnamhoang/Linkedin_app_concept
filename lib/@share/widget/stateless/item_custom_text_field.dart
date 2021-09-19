import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';
import 'package:linkedin_app_concept/resources/styles/styles.dart';
import '../custom_text_field.dart';

class ItemCustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? icon;
  const ItemCustomTextField(
      {Key? key, required this.hintText, required this.icon, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.greenOpacity,
            spreadRadius: 0,
            blurRadius: 20,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: _buildIconTextField(),
          ),
          Flexible(
            flex: 6,
            child: CustomTextField(
              backgroundColor: AppColors.white,
              cursorColor: AppColors.white,
              hintText: hintText,
              styleHintText: AppStyles()
                  .typeRoboto(16, AppColors.mediumGrayW600)
                  .copyWith(fontWeight: FontWeight.w400),
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconTextField() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18).copyWith(right: 4),
        child: Image.asset(
          icon!,
          height: 24,
          width: 24,
          fit: BoxFit.contain,
        ),
      );
}
