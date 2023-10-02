import 'package:flutter/material.dart';
import 'package:test_page/view/home_Page/widget/widgetpages/newgroup.dart';

import '../../ulits/database/database_const.dart';
import '../chat_page/chat_page.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Newgroup(),
                    ));
              },
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
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.person_add_alt_1_sharp),
          onPressed: () => showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                context: context,
                builder: (context) => Container(
                  height: 350,
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("New Contact",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        fontSize: 20)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: "First name (required)"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: "Last name (optional)"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: "Phone number"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue),
                            child: Center(
                                child: Text(
                              "Create Contact",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
