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
        elevation: 0,
        leading: BackButton(),
        title: Row(
          children: [
            CircleAvatar(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
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
              ),
            )
          ],
        ),
        actions: [
          Icon(Icons.call),
          SizedBox(
            width: 5,
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
