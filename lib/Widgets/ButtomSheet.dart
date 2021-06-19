import 'package:flutter/material.dart';
import 'package:frida/themes/colors.dart';


  // ignore: non_constant_identifier_names
  Future BottonSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
        ),
        context: context,
        builder: (context) {
          return Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                      width: 45.5,
                      height: 3,
                      decoration: BoxDecoration(color: Color(0xffc7c7c7))),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    "Share Frida",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Helvetica",
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Container(
                width: 359.75,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Color(0xffc7c7c7),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.message,
                      color: Fcolors.darkColor,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Send Direct Message'),
                  ],
                ),
              ),
              Container(
                width: 359.75,
                height: 0.5,
                decoration: BoxDecoration(
                  color: const Color(0xffc7c7c7),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [Icon(Icons.message), Text('Message')],
                      )
                    ],
                  )
                ],
              )
            ],
          );
        });
  }

