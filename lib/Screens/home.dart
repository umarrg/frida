import 'package:frida/Screens/chat.dart';
import 'package:frida/Screens/feedS.dart';
import 'package:frida/Screens/notification.dart';
import 'package:frida/Screens/profile.dart';
import 'package:frida/Screens/search.dart';
import 'package:frida/Widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:frida/themes/colors.dart';
import 'package:badges/badges.dart';

class Home extends StatefulWidget {
  static String id = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    FeedScreen(),
    SearchPage(),
    ChatPage(),
    NotificationPage(),
    ProfilePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: appBar(),
            ),
            Expanded(child: _widgetOptions.elementAt(_selectedIndex)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Fcolors.darkColor,
        selectedItemColor: Fcolors.primaryColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Badge(
              badgeContent: Text(
                '8',
                style: TextStyle(color: Fcolors.lightColor),
              ),
              child: Icon(Icons.notifications),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '',
          ),
        ],
      ),
    );
  }
}
