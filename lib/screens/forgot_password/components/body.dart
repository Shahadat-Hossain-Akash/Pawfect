// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawfect/email_text_field.dart';
import 'package:pawfect/rounded_button.dart';
import 'package:pawfect/screens/login_page/login_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                SizedBox(
                  height: 34,
                  width: 250,
                  child: Text(
                    "Forgot Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                  width: 200,
                  child: Text(
                    "Enter your email and we will send you the link to return to your account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: secondaryColor,
                      fontFamily: "Museo300",
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                EmailTextfield(
                    text: "Enter your email",
                    icons: Icons.mail_outline_rounded),
                SizedBox(height: SizeConfig.screenHeight * 0.12),
                RoundedButton(text: "Continue", route: LoginPage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Museo300",
                        color: secondaryColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.01),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Museo300",
                          color: primaryColor,
                          fontSize: 14,
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
    );
  }
}
