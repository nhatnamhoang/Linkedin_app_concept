import 'package:flutter/material.dart';
import 'colors.dart';
import 'fonts.dart';


class AppStyles {
  static var mainTheme = ThemeData(
    primaryColor: AppColors.mainColor,
    accentColor: AppColors.mainColor,
    platform: TargetPlatform.iOS,
    scaffoldBackgroundColor: AppColors.white,
    errorColor: AppColors.red,
    dialogBackgroundColor: AppColors.white,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    fontFamily: AppFonts.typeRegular,
  );

  TextStyle typeRegular(double size, [HexColor? color]) {
    return TextStyle(
      fontSize: size,
      color: color ?? AppColors.mediumGrayW600,
    );
  }

  TextStyle typeUnderLine(double size, [HexColor? color]) {
    return TextStyle(
      fontSize: size,
      color: color ?? AppColors.mediumGrayW600,
      decoration: TextDecoration.underline,
    );
  }

  TextStyle typeError() {
    return TextStyle(fontSize: 10.5, color: AppColors.red);
  }

  TextStyle typeBold(double size, [HexColor? color]) {
    return TextStyle(
        fontSize: size,
        color: color ?? AppColors.mediumGrayW600,
        fontFamily: AppFonts.typeBold,
        fontWeight: FontWeight.w600);
  }
}
