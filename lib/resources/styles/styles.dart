import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'fonts.dart';

class AppStyles {
  static var mainTheme = ThemeData(
    primaryColor: AppColors.mainColor,
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

  TextStyle typeRoboto(double size, [HexColor? color]) {
    return GoogleFonts.roboto(
      fontSize: size,
      color: color ?? AppColors.textPrimaryColor,
    );
  }

  TextStyle typeError() {
    return GoogleFonts.roboto(fontSize: 10.5, color: AppColors.red);
  }
}
