// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:docui/screens/appointcard.dart';
import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Appoint",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Appointcard()));
                          },
                          title: Text(
                            "เวลลี่ กู้ด",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("images/doc.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Divider(
                            thickness: 1,
                            height: 25,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "15/09/2023",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12:00 AM",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Confrimed",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                AlertDialog alert = AlertDialog(
                                  title: Text("เข้าพบ"),
                                );
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alert;
                                  },
                                );
                              },
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFF7165D6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "เข้าพบ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                AlertDialog alert = AlertDialog(
                                  title: Text("Cancel"),
                                );
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alert;
                                  },
                                );
                              },
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F6FA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "ยกเลิก",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "เวลลี่ กู้ด",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("images/doc.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Divider(
                            thickness: 1,
                            height: 25,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "15/09/2023",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12:00 AM",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Confrimed",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFF7165D6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "เข้าพบ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F6FA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "ยกเลิก",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "เวลลี่ กู้ด",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("images/doc.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Divider(
                            thickness: 1,
                            height: 25,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "15/09/2023",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12:00 AM",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Confrimed",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFF7165D6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "เข้าพบ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F6FA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "ยกเลิก",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "เวลลี่ กู้ด",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("images/doc.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Divider(
                            thickness: 1,
                            height: 25,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "15/09/2023",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12:00 AM",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Confrimed",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFF7165D6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "เข้าพบ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F6FA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "ยกเลิก",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
