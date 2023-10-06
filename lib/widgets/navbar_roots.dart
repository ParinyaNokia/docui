import "package:docui/screens/appoint_screen.dart";
import "package:docui/screens/chatdoc.dart";
import 'package:docui/screens/chatlistscreen.dart';
import "package:docui/screens/home_screen.dart";
import "package:flutter/material.dart";

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int selectIndex = 0;
  final _screens = [
    // homeScreen
    HomeScreen(),
    // ChatVideocallScreen
    ChatlistScreen(),
    // SetSchedule & history
    AppointScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[selectIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Color(0xFF7165D6),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: selectIndex,
          onTap: (index) {
            setState(() {
              selectIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: "Schedule",
            ),
          ],
        ),
      ),
    );
  }
}
