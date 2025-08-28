import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/widgets/custom_searchfield.dart';
import 'package:nacter/features/home/widgets/best_sellingbuilder.dart';
import 'package:nacter/features/home/widgets/exclusive_offerbuilder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: SvgPicture.asset(
            height: 50,
            "assets/images/logo.svg",
            colorFilter: ColorFilter.mode(
              AppColors.primaryColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              customSearchfield(),
              SizedBox(height: 24),
              ExclusiveOfferbuilder(),
              SizedBox(height: 24),
              BestSellingbuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
