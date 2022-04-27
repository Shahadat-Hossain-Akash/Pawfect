// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawfect/email_text_field.dart';
import 'package:pawfect/password_text_field.dart';
import 'package:pawfect/rounded_button.dart';
import 'package:pawfect/screens/login_page/login_screen.dart';
import 'package:pawfect/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../text_form_field.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                    "Business Account",
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
                    "Complete your details for busniness or continue with social account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: secondaryColor,
                      fontFamily: "Museo300",
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                BoxField(
                    text: "Enter your name",
                    icons: Icons.person_outline_rounded,
                    label: "Name"),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                BoxField(
                    text: "Enter store name",
                    icons: Icons.home_work_outlined,
                    label: "Business name"),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                EmailTextfield(
                    text: "Enter your email",
                    icons: Icons.mail_outline_rounded),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                PasswordTextfield(
                    text: "Enter your password",
                    icons: Icons.lock_outline_rounded),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                PasswordTextfield(
                    text: "Confirm your password",
                    icons: Icons.lock_outline_rounded),
                SizedBox(height: SizeConfig.screenHeight * 0.12),
                RoundedButton(text: "Continue", route: LoginSuccessPage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Text(
                      "Already have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Museo300",
                        color: secondaryColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.01),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Login",
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
