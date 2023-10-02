import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 34, 111, 173),
        title: Text("Calls"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call),
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No recent calls",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),SizedBox(height: 10,),
            SizedBox(
              width: 220,
              child: Text("Your recent voice and video calls\n                will appear here.", style: TextStyle(
                        fontSize: 15, color: Colors.black54),),
            ),
          ],
        ),
      ),
    );
  }
}
