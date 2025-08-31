import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/text_styles.dart';

class customRow extends StatelessWidget {
  const customRow({
    super.key, required this.title,required this.sign,
  });
  final String title;
  final Widget sign;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyles.bodystyle()),
        Row(
          children: [
            sign,
            SizedBox(width: 5),
            IconButton(
              constraints: BoxConstraints(),
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_sharp,
                color: AppColors.darkColor,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
