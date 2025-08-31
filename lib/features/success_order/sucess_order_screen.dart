import 'package:flutter/material.dart';
import 'package:nacter/core/constants/app_images.dart';
import 'package:nacter/core/functions/navigation.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/features/main/main_app_screen.dart';

class SucessOrderScreen extends StatelessWidget {
  const SucessOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.success,
              width: 270,
              height: 240,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 60),
            Text(
              textAlign: TextAlign.center,
              "Your Order has been\naccepted",
              style: TextStyles.titlestyle(),
            ),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              "Your items has been placed and is on\nit’s way to being processed",
              style: TextStyles.smallstyle(),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: customButtom(
                txt: "Back To Home",
                onPressed: () {
                  pushAndRemoveUntil(context, MainAppScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
