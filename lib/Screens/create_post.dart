import 'package:flutter/material.dart';
import 'package:frida/Screens/home.dart';

import 'package:frida/themes/colors.dart';

import '../constants.dart';

class CreatePost extends StatefulWidget {
  static String id = '/createPost';

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  int _value = 1;

  ShapeBorder get a => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                decoration: kAppbarDecoration,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                content: Text(
                                  "Are you sure you want to Cancel this post",
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text(
                                      'No',
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: Fcolors.primaryColor,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .popAndPushNamed(Home.id);
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.close_sharp,
                          color: Fcolors.deepColor,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Create a Post',
                        style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  horizontalTitleGap: 5.0,
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/ex.jpg'),
                      radius: 28,
                    ),
                  ),
                  title: SizedBox(
                    child: Text(
                      "Ibrahim",
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Helvetica",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                    ),
                  ),
                  subtitle: DropdownButton(
                      underline: SizedBox(),
                      isDense: true,
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Public"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Friends"),
                          value: 2,
                        ),
                        DropdownMenuItem(child: Text('Me only'), value: 3),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        minLines: null,
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What’s going on?'),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x1a000000),
                            offset: Offset(15, 15),
                            blurRadius: 30,
                            spreadRadius: 0)
                      ],
                      color: Color(0xffffffff),
                    ),
                    height: MediaQuery.of(context).size.height / 2 - 50,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                                width: 45.5,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: const Color(0xffc7c7c7))),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.video_collection_outlined,
                                    color: Fcolors.darkColor),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Photo/ Video',
                                  style: TextStyle(
                                      color: Color(0xff4a4a4a),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Helvetica",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Fcolors.darkColor),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Location',
                                  style: TextStyle(
                                      color: Color(0xff4a4a4a),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Helvetica",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.gif_outlined,
                                    color: Fcolors.darkColor),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'GIP',
                                  style: TextStyle(
                                      color: Color(0xff4a4a4a),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Helvetica",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Center(
                                  child: Text('post',
                                      style: TextStyle(
                                        color: Fcolors.lightColor,
                                      )),
                                ),
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    color: const Color(0xff37377f))),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
