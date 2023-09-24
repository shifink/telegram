import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: 250,
              height: 160,
             
              child: Image.asset(
                "assets/images/image 6.png",fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Cloud-Based",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Telegram lets you access your messages \n                  from multiple devices.",style: TextStyle(fontSize: 18,color: Colors.black45),),
            )
          ]),
        ],
      ),
    );
  }
}
