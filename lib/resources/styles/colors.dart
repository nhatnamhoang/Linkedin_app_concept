import 'package:flutter/material.dart';

class AppColors {
  static var mainColor = HexColor("#1452F0");
  static var red = HexColor('#FF0000');
  static var white = HexColor('#FFFFFF');
  static var grey = HexColor('#979797');
  static var mediumGrey = HexColor('#5C5C5C');
  static var green = HexColor('#00FB46');

  static var textPrimaryColor = HexColor("#19365F");
  static var textSecondaryColor = HexColor("#6A6C98");
  static var textThirdColor = HexColor("#6E86A8");

  static var redHeart = HexColor("#F26087");
  static var greyLike = HexColor("#6691B5");
  static var blue = HexColor("#E4FBFD");
  static var blueMedium = HexColor("#EFF2F7");
  static var greyDarkColor = HexColor("#455154");
  static var greyLightColor = HexColor("#5C5C5C");
  static var mediumGrayW600 = HexColor('#666666');
  static var mediumGrayW300 = HexColor('#999999');
  static var boxShadow = HexColor('#1AD6E7');
  static var mediumBlue = HexColor('#4267B2');
  static var redTomato = HexColor('#F75D5B');
  static var blackOpacity = Color.fromRGBO(0, 0, 0, 0.5);
  static var greenOpacity = Color.fromRGBO(26, 214, 231, 0.2);
  static const Color black = Color(0xFF000000);
  static const Color black10 = Color(0x1AFFFFFF);
}

// Parse hex to color.
class HexColor extends Color {
  static int _getColorFromHex(hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(value) : super(_getColorFromHex(value));
}
