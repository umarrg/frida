import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frida/Screens/create.dart';
import 'package:frida/Screens/login.dart';

import '../constants.dart';

class Register extends StatelessWidget {
  static String id = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Center(
                child: Text('Create your account',
                    style: kloginStyle, textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding:  EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2 +80,
                  decoration: kLoginContainer,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Name",
                            style: kLoginText,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xff37377f), width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xff919191), width: 1.0),
                              ),
                              hintText: 'name',
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Email",
                            style: kLoginText,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xff37377f), width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xff919191), width: 1.0),
                              ),
                              hintText: 'email',
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Date of birth",
                            style: kLoginText,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xff37377f), width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xff919191), width: 1.0),
                              ),
                              hintText: 'Date of birth',
                            ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(Create.id);
                                },
                                child: Container(
                                  child: Center(
                                    child: Text("Next",
                                        style: KloginButtomText,
                                        textAlign: TextAlign.center),
                                  ),
                                  width: 100,
                                  height: 39.999969482421875,
                                  decoration: kLoginButtomContainer,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        style: kFirstRichStyle,
                        text: "Already have an account? "),
                    TextSpan(
                        style: kSecondRichStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed(Login.id);
                          },
                        text: " Login")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
