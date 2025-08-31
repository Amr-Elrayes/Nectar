import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nacter/core/constants/app_images.dart';
import 'package:nacter/core/functions/navigation.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/features/auth/pages/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 25,
            right: 25,
            bottom: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  AppImages.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    AppColors.bgColor,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome\nto our store",
                  style: TextStyles.titlestyle(
                    color: AppColors.bgColor,
                    fontSize: 48,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Ger your groceries in as fast as one hour",
                  style: TextStyles.bodystyle(color: AppColors.bgColor),
                ),
                SizedBox(height: 40),
                customButtom(
                  txt: "Get Started",
                  onPressed: () {
                    pushReplacment(context, LoginScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
