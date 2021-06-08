import 'package:flutter/material.dart';
import 'themes/colors.dart';

const kloginStyle = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w700,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 24.0);

const kLoginContainer = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(15)),
  boxShadow: [
    BoxShadow(
        color: Color(0x1a000000),
        offset: Offset(15, 15),
        blurRadius: 30,
        spreadRadius: 0)
  ],
  color: Color(0xffffffff),
);

const kLoginText = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w700,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 15.0);

const kForgotPass = TextStyle(
    color: Color(0xff37377f),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 11.0);

const KloginButtomText = TextStyle(
    color: Color(0xffffffff),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 15.0);

const kLoginButtomContainer = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(40)),
  boxShadow: [
    BoxShadow(
        color: Color(0x2937377f),
        offset: Offset(0, 8),
        blurRadius: 12,
        spreadRadius: 0)
  ],
  color: Color(0xff37377f),
);
const kFirstRichStyle = TextStyle(
    color: Color(0xff626262),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 12.0);

const kSecondRichStyle = TextStyle(
    color: Color(0xff37377f),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 12.0);

const kAgreeText = TextStyle(
    color: Fcolors.blackColor,
    fontWeight: FontWeight.w500,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 14.0);

const kTearmsText = TextStyle(
    color: Color(0xff37377f),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 14.0);

const kAppbarDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(20.0),
    bottomRight: Radius.circular(20.0),
  ),
  boxShadow: [
    BoxShadow(
        color: const Color(0x1a000000),
        offset: Offset(15, 15),
        blurRadius: 30,
        spreadRadius: 0)
  ],
  color: const Color(0xffffffff),
);

const kFeedStyle = TextStyle(
    color: Color(0xff626262),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 14.0);

const kUsernameStyle = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w700,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 13.0);

const kMinuteStyle = TextStyle(
    color: Color(0xff626262),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 11.0);

const kContentPostStyle = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 14.0);

const kGlassMorphismContainer = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(30)),
  boxShadow: [
    BoxShadow(
        color: const Color(0x0d000000),
        offset: Offset(16, 16),
        blurRadius: 80,
        spreadRadius: 0)
  ],
  gradient: LinearGradient(
    begin: Alignment(0, -0.19171753525733948),
    end: Alignment(0.9915785193443298, 1.0566080808639526),
    colors: [const Color(0x65ffffff), const Color(0x27ffffff)],
  ),
);

const followCardNameStyle = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w400,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 13.0);

const followCardButtomTextStyle = TextStyle(
    color: Color(0xffffffff),
    fontWeight: FontWeight.w700,
    fontFamily: "Helvetica",
    fontStyle: FontStyle.normal,
    fontSize: 10.0);

const followCardContainerDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  color: const Color(0xff37377f),
);
