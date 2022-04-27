// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:pawfect/rounded_button.dart';
import 'package:pawfect/screens/home_page/home_page_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.20),
                Image.asset("assets/images/Ok.png"),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  "Login Success",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontFamily: "Museo900",
                    fontSize: 28,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: primaryColor.withOpacity(0.55),
                        offset: Offset(0, 10.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.20),
                RoundedButton(text: "Go to home", route: HomePage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
