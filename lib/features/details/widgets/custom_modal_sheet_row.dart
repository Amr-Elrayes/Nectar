import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/text_styles.dart';

class CustomModalSheetRow extends StatelessWidget {
  const CustomModalSheetRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final Widget value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.bodystyle(color: AppColors.grayColor, fontSize: 18),
        ),
        Row(
          children: [
            value,
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: AppColors.darkColor,
            ),
          ],
        ),
      ],
    );
  }
}
