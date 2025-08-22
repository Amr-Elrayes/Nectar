import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({
    super.key,
    this.label,
    this.hintText,
    this.suffixIcon,
    required this.obsecureText,
    this.validator,
  });
  final String? label;
  final String? hintText;
  final Widget? suffixIcon;
  final bool obsecureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obsecureText,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
        ),
        labelText: label,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          color: AppColors.grayColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          fontFamily: "Poppins",
        ),
        labelStyle: TextStyle(
          color: AppColors.grayColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          fontFamily: "Poppins",
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 1),
        ),
      ),
    );
  }
}
