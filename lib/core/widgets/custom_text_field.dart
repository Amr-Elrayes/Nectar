import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';

class customTextformfield extends StatelessWidget {
  const customTextformfield({super.key, this.label, this.hintText, this.validator});
  final String? label;
  final String? hintText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
        ),
        labelText: label,
        hintText: hintText,
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
