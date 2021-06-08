import 'package:flutter/material.dart';

import 'package:frida/themes/colors.dart';

import '../constants.dart';

class CreatePost extends StatefulWidget {
  static String id = '/createPost';

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        Navigator.of(context).pop();
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
            ListTile(
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
              subtitle: DropdownButtonHideUnderline(
                child: ButtonTheme(
                  minWidth: 50.0,
                  height: 200.0,
                  alignedDropdown: true,
                  child: DropdownButton(
                      
                      isDense: true,
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Public"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Friends only"),
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
            ),
          ],
        ),
      ),
    );
  }
}
