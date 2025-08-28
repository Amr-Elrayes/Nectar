import 'package:flutter/material.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/features/explore/models/exploreproduct_model.dart';

// ignore: must_be_immutable
class exploreproduct_card extends StatelessWidget {
  exploreproduct_card({super.key, required this.model});
  final ExploreproductModel model;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: model.bgColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: model.borderColor, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Image.asset(model.image, width: 120, height: 120),
            Text(
              model.title,
              style: TextStyles.bodystyle(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
