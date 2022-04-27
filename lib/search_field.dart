// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 10.0,
            color: primaryColor.withOpacity(0.25),
            offset: Offset(0, 10.0),
          ),
        ],
      ),
      child: TextField(
        style: TextStyle(color: secondaryColor, fontFamily: "Museo300"),
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search ",
            hintStyle: TextStyle(
              color: secondaryColor,
              fontFamily: "Museo300",
              fontSize: 14,
            ),
            prefixIcon: Icon(
              Icons.search_rounded,
              color: secondaryColor,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
      ),
    );
  }
}
