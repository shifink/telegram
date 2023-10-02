import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
         backgroundColor: const Color.fromARGB(255, 34, 111, 173),
        elevation: 0,
        leading: BackButton(),
        title: Row(
          children: [
           CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/contact image.png"),
                ),
            SizedBox(
            width: 10,
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "last seen recently",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 233, 232, 230)),
                )
              ],
            )
          ],
        ),
        actions: [
          Icon(Icons.call),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert_sharp),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
