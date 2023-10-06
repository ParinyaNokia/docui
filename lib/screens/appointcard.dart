import 'package:flutter/material.dart';

class Appointcard extends StatelessWidget {
  const Appointcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        "images/doc3.jpg",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Text(
                    "เวลลี่ กู้ด",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(0),
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
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.calendar_month),
                    ),
                    Text("15/09/2023"),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.timer),
                    ),
                    Text("17:00 - 18:00"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Divider(
                thickness: 1,
                height: 25,
              ),
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text(
                          "Conclustion & Tips",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    color: const Color.fromARGB(255, 253, 249, 249),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 35),
                          child: Text(
                            "detail of conclusion",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
