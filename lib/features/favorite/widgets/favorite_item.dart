import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/features/favorite/models/favorite_item_model.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({super.key, required this.model});
  final FavoriteItemModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: AppColors.borderColor, thickness: 1),
        SizedBox(height: 15),
        Row(
          children: [
            Image.asset(model.image, width: 90, height: 90),
            SizedBox(width: 15),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model.name, style: TextStyles.titlestyle()),
                      SizedBox(height: 5),
                      Text(model.quantaty, style: TextStyles.smallstyle()),
                      SizedBox(height: 5),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\$${model.price}", style: TextStyles.bodystyle()),
                      Icon(
                        Icons.chevron_right_sharp,
                        color: AppColors.darkColor,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
