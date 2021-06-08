import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frida/Screens/home.dart';
import 'package:frida/Screens/login.dart';

import '../constants.dart';

class Create extends StatelessWidget {
  static String id = '/create';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  height: MediaQuery.of(context).size.height / 2 + 80,
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
                            "Username",
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
                              hintText: 'username',
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Password",
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
                              hintText: 'password',
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Confirm password",
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
                              hintText: 'confirm password',
                            ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'By continuing you agree to our',
                                    style: kAgreeText,
                                  ),
                                  Text(
                                    'Terms & Conditions',
                                    style: kTearmsText,
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(Home.id);
                                },
                                child: Container(
                                  child: Center(
                                    child: Text("Create",
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
                  text: TextSpan(children: [
                TextSpan(
                    style: kFirstRichStyle, text: "Already have an account? "),
                TextSpan(
                    style: kSecondRichStyle,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushNamed(Login.id);
                      },
                    text: "Login")
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
