import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/features/cart/models/cart_item_model.dart';

class cartItem extends StatefulWidget {
  const cartItem({super.key, required this.model});
  final CartItemModel model;

  @override
  State<cartItem> createState() => _cartItemState();
}

class _cartItemState extends State<cartItem> {
  late double price;
  int copies = 1;
  @override
  void initState() {
    super.initState();
    price = widget.model.price;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: AppColors.borderColor, thickness: 1),
        SizedBox(height: 15),
        Row(
          children: [
            Image.asset(widget.model.image, width: 90, height: 90),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.model.name, style: TextStyles.titlestyle()),
                      Icon(Icons.close),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(widget.model.quantaty, style: TextStyles.smallstyle()),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (copies > 1) {
                                  copies--;
                                  widget.model.price -= price;
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.bgColor,
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: AppColors.borderColor,
                                ),
                              ),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grayColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            copies.toString(),
                            style: TextStyles.bodystyle(),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                copies++;
                                widget.model.price += price;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.bgColor,
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: AppColors.borderColor,
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$${(widget.model.price).toStringAsFixed(2)}",
                        style: TextStyles.titlestyle(fontSize: 18),
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
