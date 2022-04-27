// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawfect/screens/login_page/components/body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Log In"),
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Body(),
      ),
    );
  }
}
