import 'package:flutter/material.dart';

import 'package:frida/Widgets/actionButtom.dart';
import 'package:frida/constants.dart';
import 'package:frida/themes/colors.dart';

class Comment extends StatefulWidget {
  static String id = '/comment';

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Fcolors.lightColor,
        title: Text(
          'FridaChat',
          style: TextStyle(color: Fcolors.blackColor),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/ex.jpg'),
                          radius: 19,
                        ),
                      ),
                      title: Text(
                        "Umarrg",
                        style: kUsernameStyle,
                      ),
                      subtitle: Text(
                        "39m",
                        style: kMinuteStyle,
                      ),
                      trailing: Icon(
                        Icons.more_horiz,
                        color: Fcolors.darkColor,
                        size: 20.0,
                      ),
                      horizontalTitleGap: 10.0,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13.0),
                    child: Text(
                      'Just for good measure while I’m going through the @goalbal process here another great lesson in user friendly from validation #megel massage',
                      style: kContentPostStyle,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    child: Container(
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Image.asset(
                            'images/ex.jpg',
                            height: MediaQuery.of(context).size.height / 3,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ActionButtom(
                          icon: Icon(
                            Icons.comment,
                            color: Fcolors.primaryColor,
                          ),
                          nums: '54',
                          iconAction: () {
                            Navigator.of(context).pushNamed('/comment');
                          },
                        ),
                        ActionButtom(
                          icon: Icon(
                            Icons.sync_alt_outlined,
                            color: Fcolors.primaryColor,
                          ),
                          nums: '15',
                        ),
                        ActionButtom(
                          icon: Icon(
                            Icons.message,
                            color: Fcolors.primaryColor,
                          ),
                          nums: '1000',
                        ),
                        ActionButtom(
                          icon: Icon(
                            Icons.share,
                            color: Fcolors.primaryColor,
                          ),
                          nums: '',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: kLoginContainer,
            ),
          ),
          Container(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 11),
                        ),
                      ),
                      width: MediaQuery.of(context).size.height / 3 + 20,
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        border: Border.all(color: Color(0xfff7f7f7), width: 1),
                        color: Color(0xfff7f7f7),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xfff7f7f7),
                      radius: 27.0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xfff7f7f7),
                        radius: 25.0,
                        child: Icon(
                          Icons.send,
                          color: Fcolors.primaryColor,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              width: double.infinity,
              height: 71,
              decoration: kLoginContainer),
        ],
      ),
    );
  }
}
