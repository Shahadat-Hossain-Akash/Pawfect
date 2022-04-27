// ignore_for_file: prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pawfect/constants.dart';
import 'package:pawfect/screens/choose_account/choose_account_screen.dart';
import 'package:pawfect/screens/home_page/home_page_screen.dart';
import 'package:pawfect/size_config.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  const Spacer(
                    flex: 5,
                  ),
                  Image.asset(
                    "assets/images/pawfectLogo.png",
                    height: getProportionateScreenHeight(47),
                    width: getProportionateScreenWidth(198),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Unleashing Freedom of pets",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                  const Spacer(
                    flex: 7,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 50, 350),
                      child: Image.asset(
                        "assets/images/casual-life-3d-girl-sits-and-strokes-the-dog.png",
                        height: getProportionateScreenHeight(185),
                        width: getProportionateScreenWidth(239),
                      ),
                    ),
                  ),
                  StartButton(),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChooseAccount()));
      },
      child: Container(
        height: 48,
        width: 198,
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
            "Start",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
