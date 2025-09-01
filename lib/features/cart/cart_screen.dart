import 'package:flutter/material.dart';
import 'package:nacter/core/utils/cart_list.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/features/cart/widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("My Cart", style: TextStyles.titlestyle()),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
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
            customButtom(txt: "Go to Checkout", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
