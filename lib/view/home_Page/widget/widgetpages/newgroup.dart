import 'package:flutter/material.dart';

import '../../../../ulits/database/database_const.dart';
import '../../../chat_page/chat_page.dart';

class Newgroup extends StatelessWidget {
  const Newgroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 34, 111, 173),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "New Group",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            "up to 200000 members",
            style: TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 233, 232, 230)),
          )
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Who would you like to add?", style: TextStyle(
                      fontSize: 15, color: Colors.black54),),
                ),
              ],
            ),
            Divider(thickness: 2,),
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
      
        ]),
      ),
    );
  }
}
