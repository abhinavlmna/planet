import 'package:flutter/material.dart';
import 'package:plantnet2/plantimgpg.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/upload333333333.dart';

class Readyupload extends StatefulWidget {
  const Readyupload({super.key});

  @override
  State<Readyupload> createState() => _ReadyuploadState();
}

class _ReadyuploadState extends State<Readyupload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 230.v),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 630.v,
                  width: 620.h,
                  child: Stack(children: [
                    Positioned(
                        child: Image.asset(
                      'assets/images/img_31.png',
                      height: 630.v,
                      width: 620.h,
                      fit: BoxFit.fill,
                    )),
                    Positioned(
                        top: 10.v,
                        left: 20.h,
                        child: Image.asset(
                          'assets/images/img_32.png',
                          height: 180.v,
                          width: 180.h,
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                        top: 200.v,
                        left: 50.h,
                        child: Image.asset(
                          'assets/images/img_33.png',
                          height: 206.v,
                          width: 280.h,
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                        top: 220.v,
                        left: 100.h,
                        child: Text(
                          'Ready to upload?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                              fontFamily: 'Sanchez'),
                        )),
                    Positioned(
                        top: 270.v,
                        left: 160.h,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Plantimage()));
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(
                                fontFamily: 'Sanchez',
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )),
                    Positioned(
                        top: 320.v,
                        left: 150.h,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Upload3()));
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                fontFamily: 'Sanchez',
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )),
                    Positioned(
                        top: 370.v,
                        left: 200.h,
                        child: Image.asset(
                          'assets/images/img_34.png',
                          height: 180.v,
                          width: 180.h,
                          fit: BoxFit.fill,
                        ))
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
