import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';

class customButtom extends StatelessWidget {
  const customButtom({
    super.key, required this.txt, required this.onPressed,
  });
  final String txt;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          txt,
          style: TextStyle(
            color: AppColors.bgColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: "poppins",
          ),
        ),
      ),
    );
  }
}
