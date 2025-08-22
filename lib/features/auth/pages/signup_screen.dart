import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nacter/core/functions/email_validation.dart';
import 'package:nacter/core/functions/navigation.dart';
import 'package:nacter/core/functions/password_validation.dart';
import 'package:nacter/core/functions/username_validation.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/widgets/custom_Password_field.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/core/widgets/custom_text_field.dart';
import 'package:nacter/features/auth/pages/login_screen.dart';
import 'package:nacter/features/location/location_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool obsecureText = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset('assets/images/carrot.svg')],
                  ),
                  SizedBox(height: 70),
                  Text(
                    "Signup",
                    style: TextStyle(
                      color: AppColors.darkColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Enter your credentials to continue",
                    style: TextStyle(
                      color: AppColors.grayColor,
                      fontSize: 16,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 40),
                  customTextformfield(
                    validator: usernameValidation,
                    label: "Username",
                    hintText: "Enter Your Username",
                  ),
                  SizedBox(height: 20),
                  customTextformfield(
                    validator: emailValidation,
                    label: "Email",
                    hintText: "Enter Your Email",
                  ),
                  SizedBox(height: 20),
                  CustomPasswordField(
                    validator: passwordValidation,
                    obsecureText: obsecureText,
                    label: "Password",
                    hintText: "Enter Your Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obsecureText = !obsecureText;
                        });
                      },
                      icon: Icon(
                        obsecureText ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.grayColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 70),
                  customButtom(
                    txt: "Sign Up",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushTo(context, LocationScreen());
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          pushReplacment(context, LoginScreen());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
