import 'package:flutter/material.dart';

import '../../constants.dart';

// ignore: must_be_immutable
class FollowCard extends StatefulWidget {
  String name;
  String image;
  FollowCard({this.image, this.name});
  @override
  _FollowCardState createState() => _FollowCardState();
}

class _FollowCardState extends State<FollowCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
        width: 92.5,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    radius: 23,
                  ),
                ),
                Text(widget.name, style: followCardNameStyle),
              
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                    child: Text(
                      'Follow',
                      style: followCardButtomTextStyle,
                    ),
                  ),
                  width: 72.5,
                  height: 25.0,
                  decoration: followCardContainerDecoration,
                ),
              ],
            ),
          ),
        ),
        height: 130,
        decoration: kFollowContainerDecoration);
  }
}
