import 'package:flutter/material.dart';
import 'package:frida/Model/chatUserModel.dart';

import 'conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: "Sunusi Yahaya",
        secondaryText: "Awesome Setup",
        image: "images/ex.jpg",
        time: "Now"),
    ChatUsers(
        text: "ALiyu Shehu",
        secondaryText: "That's Great",
        image: "images/dboy.jpg",
        time: "Yesterday"),
    ChatUsers(
        text: "ALiyu Abubakar",
        secondaryText: "Hey where are you?",
        image: "images/ex.jpg",
        time: "31 Mar"),
    ChatUsers(
        text: "Hafsat Balarabe",
        secondaryText: "Busy! Call me in 20 mins",
        image: "images/ex.jpg",
        time: "28 Mar"),
    ChatUsers(
        text: "Shedrach Yohanna",
        secondaryText: "Thankyou, It's awesome",
        image: "images/ex.jpg",
        time: "23 Mar"),
    ChatUsers(
        text: "Almustapha",
        secondaryText: "will update you in evening",
        image: "images/ex.jpg",
        time: "17 Mar"),
    ChatUsers(
        text: "Ibrahim Sani",
        secondaryText: "Can you please share the file?",
        image: "images/ex.jpg",
        time: "24 Feb"),
    ChatUsers(
        text: "Nuhu Ibrahim",
        secondaryText: "How are you?",
        image: "images/ex.jpg",
        time: "18 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child:
            
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].text,
                  messageText: chatUsers[index].secondaryText,
                  imageUrl: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
