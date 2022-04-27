// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'constants.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(45),
      child: Stack(
        //clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 35),
            width: 40,
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
            // ignore: prefer_const_constructors
            child: Padding(
              padding: EdgeInsets.only(left: 7.5),
              child: Icon(
                Icons.notifications_none_rounded,
                color: secondaryColor,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Center(
              child: Text(
                "3",
                style: TextStyle(color: notificationColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
