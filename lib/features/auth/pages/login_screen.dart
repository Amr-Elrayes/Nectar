import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nacter/core/functions/email_validation.dart';
import 'package:nacter/core/functions/navigation.dart';
import 'package:nacter/core/functions/password_validation.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/widgets/custom_Password_field.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/core/widgets/custom_text_field.dart';
import 'package:nacter/features/auth/pages/signup_screen.dart';
import 'package:nacter/features/main/main_app_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    "Login",
                    style: TextStyle(
                      color: AppColors.darkColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Enter your emails and password",
                    style: TextStyle(
                      color: AppColors.grayColor,
                      fontSize: 16,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 40),
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  customButtom(
                    txt: "Login",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushAndRemoveUntil(context, MainAppScreen());
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          pushReplacment(context, SignupScreen());
                        },
                        child: Text(
                          "Singup",
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
