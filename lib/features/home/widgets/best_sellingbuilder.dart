import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/products_list.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/features/home/widgets/product_card.dart';

class BestSellingbuilder extends StatelessWidget {
  const BestSellingbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Best Selling", style: TextStyles.titlestyle()),
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
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return productCard(product: bestselling_products[index]);
          },
          itemCount: bestselling_products.length,
        ),
      ],
    );
  }
}
