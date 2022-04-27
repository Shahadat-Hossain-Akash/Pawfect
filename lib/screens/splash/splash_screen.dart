import 'package:flutter/material.dart';
import 'package:pawfect/screens/splash/components/body.dart';
import 'package:pawfect/size_config.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
