
import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';

class TextStyles {
  static TextStyle titlestyle({
    Color color = AppColors.darkColor,
    double fontSize = 24,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle bodystyle({
    Color color = AppColors.darkColor,
    double fontSize = 16,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle smallstyle({
    Color color = AppColors.grayColor,
    double fontSize = 14,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    );
  }
}
