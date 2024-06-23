import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
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
        backgroundColor: Color.fromARGB(255, 238, 212, 212),
        // body: EasySplashScreen(
        //   logo: Image.asset('assets/images/img')
        //   title: Text(
        //     "Title",
        //     style: TextStyle(
        //       fontSize: 18,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   backgroundColor: Colors.grey.shade400,
        //   showLoader: true,
        //   loadingText: Text("Loading..."),
        //   navigator: Mysignin(),
        //   durationInSeconds: 5,
        // )
        // );

        body: AnimatedSplashScreen.withScreenFunction(
          backgroundColor: Color.fromARGB(255, 238, 212, 212),
          splash: Container(
            // color: Color.fromARGB(255, 238, 212, 212),
            height: 600,
            child: Stack(
              children: [
                Positioned(
                    child: Image.asset(
                  'assets/images/img_38.png',
                  height: 101,
                  width: 291,
                  fit: BoxFit.fill,
                )),
              ],
            ),
          ),
          screenFunction: () async {
            return Mysignin();
          },
          splashTransition: SplashTransition.rotationTransition,
        ));
  }
}
