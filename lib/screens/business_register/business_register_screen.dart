// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawfect/screens/business_register/components/body.dart';

class BusinessRegisterPage extends StatelessWidget {
  const BusinessRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Business Account"),
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Body(),
      ),
    );
  }
}
