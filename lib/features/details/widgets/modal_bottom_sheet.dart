import 'package:flutter/material.dart';
import 'package:nacter/core/functions/navigation.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/features/details/widgets/custom_modal_sheet_row.dart';
import 'package:nacter/features/details/widgets/terms_part.dart';
import 'package:nacter/features/success_order/sucess_order_screen.dart';

class modalBottomSheet extends StatelessWidget {
  const modalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ChekOut", style: TextStyles.titlestyle()),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close, color: AppColors.darkColor, size: 30),
                ),
              ],
            ),
            SizedBox(height: 15),
            Divider(color: AppColors.accentcolor, thickness: 1),
            SizedBox(height: 15),
            CustomModalSheetRow(
              title: "Delivery",
              value: Text("Select Method", style: TextStyles.bodystyle()),
            ),
            SizedBox(height: 15),
            Divider(color: AppColors.accentcolor, thickness: 1),
            SizedBox(height: 15),
            CustomModalSheetRow(
              title: "Payment",
              value: Icon(
                Icons.credit_card,
                size: 20,
                color: AppColors.darkColor,
              ),
            ),
            SizedBox(height: 15),
            Divider(color: AppColors.accentcolor, thickness: 1),
            SizedBox(height: 15),
            CustomModalSheetRow(
              title: "Promo Code",
              value: Text('Pick discount', style: TextStyles.bodystyle()),
            ),
            SizedBox(height: 15),
            Divider(color: AppColors.accentcolor, thickness: 1),
            SizedBox(height: 15),
            CustomModalSheetRow(
              title: "Total Cost",
              value: Text('\$13.97', style: TextStyles.bodystyle()),
            ),
            SizedBox(height: 15),
            Divider(color: AppColors.accentcolor, thickness: 1),
            SizedBox(height: 15),
            termsPart(),
            SizedBox(height: 15),
            customButtom(
              txt: "Place Order",
              onPressed: () {
                pushAndRemoveUntil(context, SucessOrderScreen());
              },
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
