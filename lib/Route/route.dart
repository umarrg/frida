




import 'package:frida/Screens/create.dart';
import 'package:frida/Screens/create_post.dart';
import 'package:frida/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:frida/Screens/login.dart';
import 'package:frida/Screens/register.dart';
import 'package:frida/Screens/comment.dart';

Map<String, WidgetBuilder> routes = {
  Home.id: (context) => Home(),
  Login.id: (context) => Login(),
  Register.id: (context) => Register(),
  Create.id:  (context) => Create(),
  Comment.id: (context) => Comment(),
  CreatePost.id: (context) => CreatePost(),
};
