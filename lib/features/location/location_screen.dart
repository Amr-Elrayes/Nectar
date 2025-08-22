import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nacter/core/functions/address_validation.dart';
import 'package:nacter/core/functions/navigation.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/core/widgets/custom_text_field.dart';
import 'package:nacter/features/home/home_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: AppColors.darkColor,
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/images/location.svg"),
                  SizedBox(height: 40),
                  Text(
                    "Select Your Location",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Swithch on your location to stay in tune with what\’s happening in your area",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: AppColors.grayColor,
                    ),
                  ),
                  SizedBox(height: 100),
                  customTextformfield(
                    validator: addressValidation,
                    label: "Address",
                    hintText: "Enter Your Address (ex : Suez , Egypt)",
                  ),
                  SizedBox(height: 60),
                  customButtom(
                    txt: "Submit",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushReplacment(context, HomeScreen());
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
