import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                "assets/images/image 2.PNG",width: 20,height: 20,
              ),
            ),
             SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Fast",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 35),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Telegram delivers messages faster \n          than any other application",style: TextStyle(fontSize: 20,color: Colors.black45),),
            )
          ]),
        ],
      ),
    );
  }
}
