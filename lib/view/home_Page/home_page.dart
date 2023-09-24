import 'package:flutter/material.dart';
import 'package:test_page/ulits/database/database_const.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 111, 173),
          title: Text("Telegram"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        drawer: Drawer(),
        // body: ListView.builder(
        //   itemCount: ChatNames.name.length,
        //   itemBuilder: (context, index) => Padding(
        //     padding: const EdgeInsets.all(6.0),
        //     child: ListTile(
        //       leading: CircleAvatar(
        //         radius:  30,
        //       ),
        //       title: Text(
        //         ChatNames.name[index],
        //         style: TextStyle(fontWeight: FontWeight.w700),
        //       ),
        //       subtitle: Text("New message"),
        //       trailing: Column(
        //         children: [
        //           Text("may 4",style: TextStyle(color: Colors.black45),),
        //           SizedBox(height: 5,),
        //           CircleAvatar(radius: 15,
        //           backgroundColor: Color.fromARGB(255, 7, 126, 11),
        //           child: Text("1",style: TextStyle(color: Colors.white),),
        //           )
        //         ],
        //       ),
              
        //     ),
        //   ),
        // ),
        body: ListView.separated(itemBuilder:(context, index) =>  ListTile(
          leading: CircleAvatar(
            radius:  30,
          ),
          title: Text(
            ChatNames.name[index],
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          subtitle: Text("New message"),
          trailing: Column(
            children: [
              Text("may 4",style: TextStyle(color: Colors.black45),),
              SizedBox(height: 5,),
              CircleAvatar(radius: 15,
              backgroundColor: Color.fromARGB(255, 7, 126, 11),
              child: Text("1",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
          
        ), separatorBuilder: (context, index) => Divider(thickness: 3,), itemCount:  ChatNames.name.length),
        );
  }
}
