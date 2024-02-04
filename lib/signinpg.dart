import 'package:flutter/material.dart';
import 'package:plantnet2/fourthpage.dart';
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 30),
            child: Image.asset(
              'assets/images/img_17.png',
              height: 394,
              width: 350,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
                height: 60,
                child: Stack(children: [
                  Positioned(
                      child: Image.asset(
                    'assets/images/img_35.png',
                  )),
                  Positioned(
                      top: 0,
                      left: 30,
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
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'OR',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 27,
                  fontFamily: 'Sanchez'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
                height: 60,
                child: Stack(children: [
                  Positioned(child: Image.asset('assets/images/img_35.png')),
                  Positioned(
                      top: 0,
                      left: 30,
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
      ),
    );
  }
}
