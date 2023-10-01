import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_page/view/intro_page/pages/page1.dart';
import 'package:test_page/view/intro_page/pages/page2.dart';
import 'package:test_page/view/intro_page/pages/page3.dart';
import 'package:test_page/view/intro_page/pages/page4.dart';
import 'package:test_page/view/intro_page/pages/page5.dart';
import 'package:test_page/view/intro_page/pages/page6.dart';
import 'package:test_page/view/login_page/login_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    var _mediaQuery = MediaQuery.of(context).size;
    var width = _mediaQuery.width;
    var height = _mediaQuery.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.mode_night, color: Colors.black, size: 25),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
    
        children: [
          // page view
          Container(
            height: height * 0.6,
            width: width,
            child: PageView(
              controller: _controller,
              children: [
                page1(),
                Page2(),
                Page3(),
                Page4(),
                Page5(),
                Page6(),
              ],
            ),
          ),
          // dots indicators
          SmoothPageIndicator(controller: _controller, count: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(70.0),
            child:
            //  ElevatedButton(
            //     onPressed: () {}, child: Text("Start Messaging")),
            InkWell(
             onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),)),
              child: Container(
                width: 260,
                height: 50,
                decoration: BoxDecoration( color: Colors.blue[400],borderRadius: BorderRadius.circular(10)),               
                child: Center(child: Text("Start Messaging",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            ),
            
          )
        ],
      ),
    );
  }
}
