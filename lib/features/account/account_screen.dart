import 'package:flutter/material.dart';
import 'package:nacter/core/functions/navigation.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/features/account/widgets/custom_account_row.dart';
import 'package:nacter/features/account/widgets/info_row.dart';
import 'package:nacter/features/auth/pages/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoRow(),
            SizedBox(height: 30),
            Divider(color: AppColors.accentcolor, thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  CustomAccountRow(
                    Title: "Order",
                    icon: Icons.shopping_bag_outlined,
                  ),
                  CustomAccountRow(
                    Title: "My Details",
                    icon: Icons.calendar_view_day_outlined,
                  ),
                  CustomAccountRow(
                    Title: "Delivery Address",
                    icon: Icons.location_on_outlined,
                  ),
                  CustomAccountRow(
                    Title: "Payment Methods",
                    icon: Icons.credit_card,
                  ),
                  CustomAccountRow(
                    Title: "Promo Code",
                    icon: Icons.book_online_outlined,
                  ),
                  CustomAccountRow(
                    Title: "Notifecations ",
                    icon: Icons.notifications_active_outlined,
                  ),
                  CustomAccountRow(
                    Title: "Help ",
                    icon: Icons.help_outline_outlined,
                  ),
                  CustomAccountRow(
                    Title: "About  ",
                    icon: Icons.info_outline_rounded,
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: customButtom(
                      txtColor: AppColors.primaryColor,
                      txt: "Log Out",
                      onPressed: () {
                        pushAndRemoveUntil(context, LoginScreen());
                      },
                      color: AppColors.accentcolor,
                      icon: Icons.logout_outlined,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
