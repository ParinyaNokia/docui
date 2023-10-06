import 'package:docui/screens/chatdoc.dart';
import 'package:flutter/material.dart';

class ChatlistScreen extends StatelessWidget {
  List imgs = ["doc.jpg", "doc3.jpg", "roti.jpg"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Chat",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  minVerticalPadding: 20,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(),
                        ));
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/${imgs[index]}"),
                  ),
                  title: Text(
                    "User Name",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Hello, How You feel in this time?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54)),
                  trailing: Text(
                    "18:00",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
              );
            })
      ]),
    );
  }
}
