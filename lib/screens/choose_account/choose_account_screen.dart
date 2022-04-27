// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawfect/screens/choose_account/components/body.dart';

class ChooseAccount extends StatelessWidget {
  static String routeName = "/choose";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Choose Account"),
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Body(),
      ),
    );
  }
}
