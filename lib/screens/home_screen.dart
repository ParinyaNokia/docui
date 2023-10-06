import "package:docui/screens/appointcard.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class HomeScreen extends StatelessWidget {
  List<String> homeindex = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Doctor",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/doc3.jpg"),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  "Upcoming in week",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: homeindex
                    .map(
                      (item) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Appointcard()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage("images/doc.jpg"),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Text(
                                    "User name",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Icon(Icons.calendar_month,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "15/09/2023",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Icon(
                                          Icons.timer,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "17:00 - 18:00",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Divider(
                thickness: 1,
                height: 5,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  "Appoint",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: homeindex
                      .map((e) => GestureDetector(
                            onTap: () {},
                            child: Container(
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(255, 147, 138, 224)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage:
                                              AssetImage("images/doc.jpg"),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        ),
                                        Text(
                                          "Username",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(0),
                                                  child: Icon(
                                                      Icons.calendar_month,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "15/09/2023",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Icon(
                                                    Icons.timer,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  "17:00 - 18:00",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15, 0, 0, 0),
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ))
                      .toList()),
            ))
          ],
        ),
      ),
    );
  }
}
