import 'package:flutter/material.dart';
import 'package:frida/themes/colors.dart';


// ignore: must_be_immutable
class ActionButtom extends StatelessWidget {
  ActionButtom({   this.icon, this.iconAction, this.nums});

  String nums;
  Function iconAction;

  Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: iconAction,
      child: Row(
        children: [
          icon,
          Text(
            nums,
            style: TextStyle(
                color: Fcolors.lightColor,
                fontWeight: FontWeight.w400,
                fontFamily: "Helvetica",
                fontStyle: FontStyle.normal,
                fontSize: 13.0),
          ),
        ],
      ),
    );
  }
}
