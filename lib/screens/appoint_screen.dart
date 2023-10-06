// ignore_for_file: prefer_const_constructors
import 'package:docui/screens/settingappoint.dart';
import 'package:docui/widgets/complete.dart';
import 'package:docui/widgets/upcoming.dart';
import 'package:flutter/material.dart';

class AppointScreen extends StatefulWidget {
  const AppointScreen({super.key});

  @override
  State<AppointScreen> createState() => _AppointScreenstate();
}

class _AppointScreenstate extends State<AppointScreen> {
  int _buttonIndex = 0;

  final _AppointScreenWidget = [
    Upcoming(),
    Complete(),
    Center(
      child: Text("Cancel"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Appoint Schedule",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Settingappoint()));
                },
                child: Text("setting appoint"),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF4F6FA),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                    decoration: BoxDecoration(
                      color: _buttonIndex == 0
                          ? Color(0xFF7165d6)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Upcoming",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 0
                              ? Colors.white
                              : Colors.black38),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                    decoration: BoxDecoration(
                      color: _buttonIndex == 1
                          ? Color(0xFF7165d6)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Compelete",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 1
                              ? Colors.white
                              : Colors.black38),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                    decoration: BoxDecoration(
                      color: _buttonIndex == 2
                          ? Color(0xFF7165d6)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 2
                              ? Colors.white
                              : Colors.black38),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            _AppointScreenWidget[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
