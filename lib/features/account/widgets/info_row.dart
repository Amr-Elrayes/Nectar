import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nacter/core/constants/app_images.dart';
import 'package:nacter/core/utils/text_styles.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 70, 25, 0),
      child: Row(
        children: [
          Image.asset(AppImages.person),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Afsar Hossen",
                    style: TextStyles.bodystyle(fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset(AppImages.penSvg, width: 15, height: 15),
                ],
              ),
              Text(
                "Imshuvo97@gmail.com",
                style: TextStyles.smallstyle(fontweight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
