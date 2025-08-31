import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';

class StarsRow extends StatelessWidget {
  const StarsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: AppColors.starcolor,
          size: 25,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: AppColors.starcolor,
          size: 25,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: AppColors.starcolor,
          size: 25,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: AppColors.starcolor,
          size: 25,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: AppColors.starcolor,
          size: 25,
        ),
      ],
    );
  }
}
