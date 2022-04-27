import 'package:flutter/Material.dart';

const primaryColor = Color(0xFFEA712E);
const secondaryColor = Color(0xFFFCAD81);
const productPageColor = Color(0xFFF4F4F4);
const darkThemeColor = Color(0xFF2C2C2C);
const semiWhiteColor = Color(0xFFFBFBFB);
const notificationColor = Color(0xFFFC8181);
const kAnimationDuration = Duration(milliseconds: 200);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
