import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
              width: 160,
              height: 160,           
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.amber,
                image: DecorationImage(image: AssetImage("assets/images/freelogo.jpg",),fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Free",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 35),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Telegram provides free unlimited cloud \n           storage for chats and media",style: TextStyle(fontSize: 18,color: Colors.black45),),
            )
          ]),
        ],
      ),
    );
  }
}
