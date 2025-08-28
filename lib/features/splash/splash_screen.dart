import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nacter/core/constants/app_images.dart';
import 'package:nacter/core/functions/navigation.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/features/auth/pages/login_screen.dart';
import 'package:nacter/features/main/main_app_screen.dart';
import 'package:nacter/features/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      pushReplacment(context, WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(child: SvgPicture.asset(AppImages.logoSvg)),
    );
  }
}
