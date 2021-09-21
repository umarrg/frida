import 'package:flutter/material.dart';
import 'package:frida/Model/followCardModel.dart';
import 'package:frida/Screens/Feeds/Tweet.dart';
import 'package:frida/constants.dart';
import 'package:frida/themes/colors.dart';
import 'package:frida/Model/tweet.dart';

import 'package:frida/Screens/Feeds/followCard.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final List<Follow> follow = [
    Follow(
      image: 'images/56.jpg',
      name: 'Shamawilu aliyu',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'kabir aliyu',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'umar abubakar',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'sagir abdullahi',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'sani usman',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'usama hussain',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'abba abubakar',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'usama hussain',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'abba abubakar',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'usama hussain',
    ),
    Follow(
      image: 'images/ex.jpg',
      name: 'abba abubakar',
    ),
  ];
  final List<Tweet> tweet = [
    Tweet(
      imageContent: 'images/mrs.jpg',
      messageContent:
          'I am glad to be part of this important and historical occasion of commissioning of Creche established by the Planning and Budget Commission. The Commission has set the pace for other Ministries',
      profilePicture: 'images/baby.jpg',
      time: '30',
      userName: 'Aisha Ummi',
    ),
    Tweet(
      imageContent: 'images/woman1.jpg',
      messageContent:
          'Just for good measure while I’m going through the @goalbal process here another great lesson in user friendly from validation #megel massage',
      profilePicture: 'images/woman2.webp',
      time: '15',
      userName: 'Hafsat Balarabe',
    ),
    Tweet(
      imageContent: 'images/elrufai.jpg',
      messageContent:
          'Just for good measure while I’m going through the @goalbal process here another great lesson in user friendly from validation #megel massage',
      profilePicture: 'images/ex.jpg',
      time: '12',
      userName: 'Mickel oche',
    ),
    Tweet(
      imageContent: 'images/abba2.jpg',
      messageContent: 'Life is not an option so why not live life 🤩',
      profilePicture: 'images/abba1.jpeg',
      time: '9',
      userName: 'Abba Abubakar',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Fcolors.primaryColor,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('/createPost');
        },
      ),
      backgroundColor: Fcolors.lightColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Feeds',
                style: kFeedStyle,
              ),
              ListView.builder(
                itemCount: tweet.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Tweets(
                    username: tweet[index].userName,
                    profilePicture: tweet[index].profilePicture,
                    time: tweet[index].time,
                    messageContent: tweet[index].messageContent,
                    imageContent: tweet[index].imageContent,
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Accounts you may follow",
                  style: kAccountMayFollowTextStyle,
                ),
              ),
              Container(
                color: Fcolors.lightColor,
                height: MediaQuery.of(context).size.height / 5 - 20,
                child: ListView.builder(
                  itemCount: follow.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return FollowCard(
                      name: follow[index].name,
                      image: follow[index].image,
                    );
                  },
                ),
              ),
              ListView.builder(
                itemCount: tweet.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Tweets(
                    username: tweet[index].userName,
                    profilePicture: tweet[index].profilePicture,
                    time: tweet[index].time,
                    messageContent: tweet[index].messageContent,
                    imageContent: tweet[index].imageContent,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
