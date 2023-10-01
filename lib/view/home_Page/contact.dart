import 'package:flutter/material.dart';

import '../../ulits/database/database_const.dart';
import '../chat_page/chat_page.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 34, 111, 173),
        title: Text("New Message"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.group,
                size: 30,
              ),
              title: Text(
                "New Group",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.lock_outline,
                size: 30,
              ),
              title: Text(
                "New secret chat",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.campaign,
                size: 30,
              ),
              title: Text(
                "New Channel",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              color: Color.fromARGB(255, 210, 214, 215),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Sorted by last seen time",
                  style: TextStyle(
                      color: Color.fromARGB(255, 99, 103, 105),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            ListView.builder(
              itemCount: ChatNames.name.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(),
                    )),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage("assets/images/contact image.png"),
                ),
                title: Text(
                  ChatNames.name[index],
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text("last seen recently"),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
