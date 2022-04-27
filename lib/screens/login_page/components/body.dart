// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pawfect/constants.dart';
import 'package:pawfect/email_text_field.dart';
import 'package:pawfect/password_text_field.dart';
import 'package:pawfect/rounded_button.dart';
import 'package:pawfect/screens/choose_account/choose_account_screen.dart';
import 'package:pawfect/screens/forgot_password/forgot_password_screen.dart';
import 'package:pawfect/text_form_field.dart';

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
                    "Welcome Back",
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
                    "Sign up with email and password or continue with social account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: secondaryColor,
                      fontFamily: "Museo300",
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          //BoxField(text: "Enter your email", icons: Icons.mail_outline_rounded),
          EmailTextfield(
              text: "Enter your email", icons: Icons.mail_outline_rounded),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          //BoxField(text: "Enter password", icons: Icons.lock_outline_rounded),
          PasswordTextfield(
              text: "Enter password", icons: Icons.lock_outline_rounded),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Container(
            margin: EdgeInsets.only(bottom: 50, left: 10),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: remember,
                  activeColor: primaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  },
                ),
                Text(
                  "Remember me",
                  style:
                      TextStyle(color: secondaryColor, fontFamily: "Museo300"),
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.25),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()));
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: secondaryColor,
                        fontFamily: "Museo300",
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          RoundedButton(
            text: 'Continue',
            route: null,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChooseAccount()));
                },
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
    );
  }
}
