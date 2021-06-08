import 'package:flutter/material.dart';

import 'package:frida/constants.dart';
import 'package:frida/themes/colors.dart';
import 'package:frida/Widgets/actionButtom.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key key}) : super(key: key);

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
              SizedBox(
                height: 5.0,
              ),
              Tweets(),
              Tweets(),
              Tweets(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
                child: Text(
                  "Accounts you may follow",
                  style: const TextStyle(
                      color: const Color(0xff626262),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Helvetica",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.0),
                ),
              ),
              Container(
                color: Fcolors.lightColor,
                height: MediaQuery.of(context).size.height / 5 + 5,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    FollowCard(),
                    FollowCard(),
                    FollowCard(),
                    FollowCard(),
                    FollowCard(),
                    FollowCard(),
                    FollowCard(),
                    FollowCard(),
                  ],
                ),
              ),
              Tweets(),
              Tweets(),
              Tweets(),
              Tweets(),
            ],
          ),
        ),
      ),
    );
  }
}

class FollowCard extends StatelessWidget {
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
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/ex.jpg'),
                    radius: 19,
                  ),
                ),
                Text("Ibrahim", style: followCardNameStyle),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: Text(
                      'Follow',
                      style: followCardButtomTextStyle,
                    ),
                  ),
                  width: 72.5,
                  height: 20,
                  decoration: followCardContainerDecoration,
                ),
              ],
            ),
          ),
        ),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 15),
                  blurRadius: 30,
                  spreadRadius: 0),
            ],
            color: const Color(0xffffffff)));
  }
}

class Tweets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                                Icons.sync_alt_outlined,
                                color: Fcolors.lightColor,
                              ),
                              nums: '15',
                              
                            ),
                            ActionButtom(
                              icon: Icon(
                                Icons.message,
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
