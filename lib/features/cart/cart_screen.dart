import 'package:flutter/material.dart';
import 'package:nacter/core/utils/cart_list.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/features/cart/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("My Cart", style: TextStyles.titlestyle()),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return cartItem(model: cartItems[index]);
                },
                itemCount: cartItems.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
