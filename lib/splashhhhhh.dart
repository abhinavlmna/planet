import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:plantnet2/signinpg.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen.withScreenFunction(
        splash: Container(height: 600,
        child: Stack(
          children: [
            Positioned(child: Image.asset('assets/images/img_38.png',height: 101,width: 291,fit: BoxFit.fill,)),
          ],
        ),
        ),
        screenFunction: () async{
          return Mysignin();
        },
        splashTransition: SplashTransition.rotationTransition,
      )
    );
  }
}
