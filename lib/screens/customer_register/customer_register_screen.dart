// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawfect/screens/customer_register/components/body.dart';

class CustomerRegisterPage extends StatelessWidget {
  const CustomerRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register Account"),
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Body(),
      ),
    );
  }
}
