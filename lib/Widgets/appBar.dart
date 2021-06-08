import 'package:flutter/material.dart';
import 'package:frida/constants.dart';
import 'package:frida/themes/colors.dart';

Container appBar() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: kAppbarDecoration,
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'FridaChat',
            style: TextStyle(
                color: Fcolors.primaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w800),
          ),
          GestureDetector(
            child: CircleAvatar(
              backgroundColor: Fcolors.lightColor,
              child: Icon(Icons.more_horiz, color: Fcolors.darkColor),
            ),
          ),
        ],
      ),
    ),
  );
}
