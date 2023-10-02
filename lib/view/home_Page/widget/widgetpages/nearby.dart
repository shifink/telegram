import 'package:flutter/material.dart';

class Nearby extends StatelessWidget {
  const Nearby({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: Colors.black54,
          )),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Image.asset("assets/images/people nearby.png"),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "People Nearby",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 300,
              child: Text(
                "      Quickly add people nearby who are also \n       viewing this section and discover local\n                            group chats.",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 300,
              child: Text(
                "    Please turn on location services to enable \n                             this feature.",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(8),
                  color: Color.fromARGB(255, 83, 166, 234)),
              child: Center(
                  child: Text(
                "Turn On",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              )),
            )
          ],
        ),
      )),
    );
  }
}
