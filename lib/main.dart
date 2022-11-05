import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        centered: true,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        animationDuration: Duration(seconds: 3),
        splash: Column(
          children: [
            Flexible(
              child: Image(
                image: AssetImage("assets/flutter_ui_dev_logo.png"),
                height: 80,
                width: 80,
              ),
            ),
            Text(
              "WELCOME",
              style: TextStyle(
                color: Color(0xff2E81B1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        nextScreen: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
