import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/text_styles.dart';

class CustomAccountRow extends StatelessWidget {
  const CustomAccountRow({
    super.key, required this.icon, required this.Title,
  });
  final IconData icon;
  final String Title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: AppColors.darkColor,
                  size: 25,
                ),
                SizedBox(width: 15),
                Text(
                  Title,
                  style: TextStyles.bodystyle(fontSize: 18),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.darkColor,
              size: 25,
            ),
          ],
        ),
        SizedBox(height: 15),
        Divider(color: AppColors.accentcolor, thickness: 1),
      ],
    );
  }
}
