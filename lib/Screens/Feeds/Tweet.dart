import 'package:flutter/material.dart';

import 'package:frida/Widgets/ButtomSheet.dart';
import 'package:frida/Widgets/actionButtom.dart';
import 'package:frida/constants.dart';
import 'package:frida/themes/colors.dart';

// ignore: must_be_immutable
class Tweets extends StatefulWidget {
  String username;
  String profilePicture;
  String messageContent;
  String imageContent;
  String time;
  Tweets(
      {this.imageContent,
      this.messageContent,
      this.time,
      this.profilePicture,
      this.username});

  @override
  _TweetsState createState() => _TweetsState();
}

class _TweetsState extends State<Tweets> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      widget.profilePicture,
                    ),
                    radius: 19,
                  ),
                ),
                title: Text(
                  widget.username,
                  style: kUsernameStyle,
                ),
                subtitle: Text(
                  widget.time + 'm',
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
                widget.messageContent,
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
                      widget.imageContent,
                      height: MediaQuery.of(context).size.height / 3,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        decoration: kGlassMorphismContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ActionButtom(
                              icon: Icon(
                                Icons.comment,
                                color: Fcolors.lightColor,
                              ),
                              nums: '54',
                              iconAction: () {
                                Navigator.of(context).pushNamed('/comment');
                              },
                            ),
                            ActionButtom(
                              icon: Icon(
                                Icons.repeat,
                                color: Fcolors.lightColor,
                              ),
                              nums: '15',
                            ),
                            ActionButtom(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Fcolors.lightColor,
                              ),
                              nums: '1000',
                            ),
                            ActionButtom(
                              icon: Icon(
                                Icons.share,
                                color: Fcolors.lightColor,
                              ),
                              nums: '',
                              iconAction: () {
                                BottonSheet(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        decoration: kLoginContainer,
      ),
    );
  }
}
