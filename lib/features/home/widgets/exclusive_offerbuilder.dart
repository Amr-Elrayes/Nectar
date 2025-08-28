import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/products_list.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/features/home/widgets/product_card.dart';

class ExclusiveOfferbuilder extends StatelessWidget {
  const ExclusiveOfferbuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Exclusive Offer", style: TextStyles.titlestyle()),
            TextButton(
              child: Text(
                "See all",
                style: TextStyles.bodystyle(color: AppColors.primaryColor),
              ),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return productCard(product: exclusive_products[index],);
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 20);
            },
            itemCount: exclusive_products.length,
          ),
        ),
      ],
    );
  }
}
