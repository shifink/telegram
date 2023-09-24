import 'package:flutter/material.dart';
import 'package:test_page/view/intro_page/intro_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroPage(),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200, 
              child: Image.asset("assets/images/splashImage.png"),
            ),
          ],
        ),
      ),
    );
  }
}