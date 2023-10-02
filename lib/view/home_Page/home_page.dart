import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_page/ulits/database/database_const.dart';
import 'package:test_page/view/chat_page/chat_page.dart';
import 'package:test_page/view/home_Page/widget/list_widget.dart';
import 'package:test_page/view/home_Page/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController textController = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 111, 173),
        title: Text("Telegram"),
        actions: [
          AnimSearchBar(
            color: Color.fromARGB(255, 34, 111, 173),
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(
              Icons.cancel,
              size: 15,
            ),
            width: 300,
            textController: textController,
            onSuffixTap: () {
              setState(() {
                textController.clear();
              });
            },
            onSubmitted: (String) {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 34, 111, 173),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        Icon(
                          Icons.mode_night,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User Name",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "+91 0000000000",
                          style: TextStyle(color: Colors.white30),
                        )
                      ],
                    )
                  ],
                )),
            List(),
          ],
        ),
      ),
      body: ListView.separated(
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
                subtitle: Text("New message"),
                trailing: Column(
                  children: [
                    Text(
                      "may 4",
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Color.fromARGB(255, 10, 210, 17),
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
          separatorBuilder: (context, index) =>
              Divider(thickness: 2, indent: 80),
          itemCount: ChatNames.name.length),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 34, 111, 173),
          elevation: 0,
          child: Icon(Icons.edit),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Contact(),
              ))),
    );
  }
}
