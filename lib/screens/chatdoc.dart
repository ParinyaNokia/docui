import 'dart:io';

import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Color purple = Color(0xFF6c5ce7);
  Color black = Color(0xFF191919);
  TextEditingController msgInputController = TextEditingController();
  late IO.Socket socket;
  @override
  void initState() {
    initSocket();
    super.initState();
  }

  Future<void> initSocket() async {
    socket = IO.io(
      'http://10.2.201.42:4000',
      IO.OptionBuilder()
          .setTransports(['websocket']).setExtraHeaders({'foo': 'bar'}).build(),
    );
    socket.connect();
    print('Socket connected with ID: ${socket.id}');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(children: [
          Expanded(
              flex: 9,
              child: Container(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MessageItem(
                      sentByme: false,
                    );
                  },
                ),
              )),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: purple,
              controller: msgInputController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: purple),
                    child: IconButton(
                      onPressed: () {
                        sendMessage(msgInputController.text);
                        print(msgInputController.text);
                      },
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ))
        ]),
      ),
    );
  }

  void sendMessage(String text) {
    if (socket.connected) {
      var messageJson = {"message": text, "sentByMe": socket.id};
      print(messageJson);
      socket.emit('message', messageJson);
    } else {
      print('Socket is not connected.');
    }
  }
}

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key, required this.sentByme}) : super(key: key);
  final bool sentByme;

  @override
  Widget build(BuildContext context) {
    Color purple = Color(0xFF6c5ce7);
    Color black = Color(0xFF191919);
    Color white = Colors.white;
    return Align(
      alignment: sentByme ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: sentByme ? purple : white),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              "hello",
              style: TextStyle(fontSize: 18, color: sentByme ? white : purple),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "1:10 AM",
              style: TextStyle(
                  fontSize: 10,
                  color: (sentByme ? white : purple).withOpacity(0.7)),
            )
          ],
        ),
      ),
    );
  }
}
