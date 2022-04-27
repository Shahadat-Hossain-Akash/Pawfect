// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'constants.dart';

class BoxField extends StatelessWidget {
  final String text;
  final IconData icons;
  final String label;
  const BoxField({
    Key? key,
    required this.text,
    required this.icons,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: secondaryColor),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
        labelText: label,
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
