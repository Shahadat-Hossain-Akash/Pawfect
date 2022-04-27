// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'constants.dart';

class PasswordTextfield extends StatelessWidget {
  const PasswordTextfield({
    Key? key,
    required this.text,
    required this.icons,
  }) : super(key: key);

  final String text;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      style: TextStyle(color: secondaryColor),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
        labelText: "Password",
        labelStyle: TextStyle(color: secondaryColor, fontFamily: "Museo300"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: text,
        hintStyle: TextStyle(
          color: secondaryColor,
          fontFamily: "Museo300",
          fontSize: 14,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 30),
          child: Icon(
            icons,
            color: secondaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: secondaryColor,
            ),
            gapPadding: 10),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: secondaryColor,
            ),
            gapPadding: 10),
      ),
    );
  }
}
