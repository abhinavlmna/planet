import 'package:flutter/material.dart';
import 'package:plantnet2/Mybuttons.dart';
import 'package:plantnet2/paymentpg.dart';
import 'package:plantnet2/pickplants.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/signinpg.dart';
import 'package:plantnet2/splashhhhhh.dart';
import 'package:plantnet2/thirdpage.dart';
import 'package:plantnet2/update2.dart';
import 'package:plantnet2/updateprofilepg.dart';
import 'package:plantnet2/wishlistpg.dart';

import 'eightpage.dart';
import 'fifthpage.dart';
import 'fourthpage.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
        theme: ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 238, 212, 212),
            appBarTheme: AppBarTheme(
                backgroundColor: Color.fromARGB(255, 241, 232, 232))),
      );
    });
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 65, top: 50),
            child: Image.asset(
              'assets/images/img_1.png',
              height: 394.v,
              width: 350.h,
              fit: BoxFit.cover,
            ),
          ),
          TextButton(
            onPressed: () {
              print('Sign In');
            },
            child: Text('Sign In'),
            style: TextButton.styleFrom(textStyle: TextStyle()),
          ),
          TextButton(
              onPressed: () {
                print('Sign Up');
              },
              child: Text('Sign Up')),
        ],
      ),
    ));
  }
}
