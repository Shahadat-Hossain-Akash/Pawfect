// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pawfect/screens/home_page/components/adoption_post.dart';
import 'package:pawfect/screens/home_page/components/catergory.dart';

import '../../../constants.dart';
import '../../../notiication_button.dart';
import '../../../search_field.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 35, horizontal: 42.5),
                  child: SearchField(),
                ),
                NotificationButton(),
              ],
            ),
            //SizedBox(width: SizeConfig.screenWidth * 0.01),
            Container(
              height: 120,
              width: 380,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: primaryColor.withOpacity(0.55),
                    offset: Offset(0, 10.0),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                child: Text.rich(
                  TextSpan(
                      text: "Adopt a pet to get\n",
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "Cashback 20%",
                            style:
                                TextStyle(fontSize: 24, fontFamily: "Museo900"))
                      ]),
                ),
              ),
            ),
            SizedBox(width: SizeConfig.screenWidth * 0.05),
            Categories(),
            SizedBox(height: SizeConfig.screenHeight * 0.01),
            AdoptionPost(),
          ],
        ),
      ),
    );
  }
}
