import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

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
                "assets/images/telegamlogo.png",fit: BoxFit.cover,
              ),
            ),
             SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Telegram",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 35),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("The world fastest messaging app.\n             It's is free and secure",style: TextStyle(fontSize: 20,color: Colors.black45),),
            )
          ]),
        ],
      ),
    );
  }
}
