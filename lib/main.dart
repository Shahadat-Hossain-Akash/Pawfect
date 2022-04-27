// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pawfect/constants.dart';
import 'package:pawfect/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pawfect',
      theme: ThemeData(
        unselectedWidgetColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Museo900",
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: primaryColor,
          ),
          titleTextStyle: TextStyle(
              color: secondaryColor.withOpacity(.65),
              fontFamily: "Museo300",
              fontSize: 14),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
