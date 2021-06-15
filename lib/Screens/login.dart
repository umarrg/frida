import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frida/Screens/home.dart';
import 'package:frida/Screens/register.dart';
import 'package:frida/constants.dart';

class Login extends StatefulWidget {
  static String id = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
                child: Text('Login',
                    style: kloginStyle, textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2 - 20,
                  decoration: kLoginContainer,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Form(
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
                            TextFormField(
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
                                hintText: 'Username or email',
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Helvetica",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
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
                                hintText: 'Password',
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Text("Forgot Password?",
                                      style: kForgotPass,
                                      textAlign: TextAlign.center),
                                ),
                                Container(
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(Home.id);
                                      },
                                      child: Text("Login",
                                          style: KloginButtomText,
                                          textAlign: TextAlign.center),
                                    ),
                                  ),
                                  width: 100,
                                  height: 39.999969482421875,
                                  decoration: kLoginButtomContainer,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    style: kFirstRichStyle, text: "Don’t have an account? "),
                TextSpan(
                    style: kSecondRichStyle,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushNamed(Register.id);
                      },
                    text: " Sign up")
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
