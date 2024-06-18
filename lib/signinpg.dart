import 'package:flutter/material.dart';
import 'package:plantnet2/fourthpage.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/thirdpage.dart';

class Mysignin extends StatefulWidget {
  const Mysignin({super.key});

  @override
  State<Mysignin> createState() => _MysigninState();
}

class _MysigninState extends State<Mysignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Image.asset(
            'assets/images/img_1nw.png',
            height: 394.v,
            width: 350.h,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
              height: 60.v,
              width: 160.h,
              child: Stack(children: [
                Positioned(
                    child: Image.asset(
                  'assets/images/img_35.png',
                )),
                Positioned(
                    top: 0.v,
                    left: 30.h,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mythirdpage()));
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Sanchez',
                            color: Colors.black),
                      ),
                    )),
              ])),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.v),
          child: Text(
            'OR',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 27,
                fontFamily: 'Sanchez'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.v),
          child: Container(
              height: 60.v,
              width: 160.h,
              child: Stack(children: [
                Positioned(child: Image.asset('assets/images/img_35.png')),
                Positioned(
                    top: 0.v,
                    left: 30.h,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Myfourthpage()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Sanchez',
                            color: Colors.black),
                      ),
                    )),
              ])),
        ),
      ]),
    );
  }
}
