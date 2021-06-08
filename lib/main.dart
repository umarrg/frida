import 'package:flutter/material.dart';
import 'package:frida/Route/route.dart';
import 'package:frida/Screens/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Login.id,
      routes: routes,
    );
  }
}