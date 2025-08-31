import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/features/details/details_screen.dart';

class imageContainer extends StatelessWidget {
  const imageContainer({super.key, required this.widget});

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
      height: 370,
      decoration: BoxDecoration(
        color: AppColors.accentcolor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.darkColor,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.file_upload_outlined,
                  color: AppColors.darkColor,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Hero(
            tag: widget.product.id,
            child: Image.asset(
              widget.product.image,
              width: 330,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
