import 'package:flutter/material.dart';
import 'package:pawfect/screens/choose_account/choose_account_screen.dart';
import 'package:pawfect/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  ChooseAccount.routeName: (context) => ChooseAccount(),
};
