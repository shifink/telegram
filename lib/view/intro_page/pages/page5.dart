import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

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
                "assets/images/IMG_5536.PNG",fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Secure",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 35),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Secure keeps your messages safe\n            from hackers attacks.",style: TextStyle(fontSize: 20,color: Colors.black45),),
            )
          ]),
        ],
      ),
    );
  }
}
