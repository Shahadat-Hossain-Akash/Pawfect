// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pawfect/constants.dart';
import 'package:pawfect/screens/business_register/business_register_screen.dart';
import 'package:pawfect/screens/customer_register/customer_register_screen.dart';
import 'package:pawfect/screens/login_page/login_screen.dart';

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
                    "Choose Account",
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
                    "Select your account type to proceed further or continue with social account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: secondaryColor,
                      fontFamily: "Museo300",
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomerRegisterPage()));
                  },
                  child: Container(
                    height: 60,
                    width: 260,
                    margin: EdgeInsets.only(bottom: 50),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.55),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Customer",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.12),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BusinessRegisterPage()));
                  },
                  child: Container(
                    height: 60,
                    width: 260,
                    margin: EdgeInsets.only(bottom: 50),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.55),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Business",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: Text(
                        "Already have an account,",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Museo300",
                          color: secondaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.005),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            right: getProportionateScreenWidth(5)),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: "Museo300",
                              color: primaryColor,
                              fontSize: 14,
                              decoration: TextDecoration.underline),
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
