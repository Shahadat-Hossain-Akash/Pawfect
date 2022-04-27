// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

import 'constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  var route;

  RoundedButton({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        height: 55,
        width: 380,
        margin: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.55),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        // ignore: prefer_const_constructors
        child: Center(
          // ignore: prefer_const_constructors
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
