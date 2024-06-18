import 'package:flutter/material.dart';
import 'package:plantnet2/readyupload.dart';
import 'package:plantnet2/screensize.dart';

class Upload3 extends StatefulWidget {
  const Upload3({super.key});

  @override
  State<Upload3> createState() => _Upload3State();
}

class _Upload3State extends State<Upload3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 90.v, left: 30.h),
              child: Container(
                height: 300.v,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/img_29.png',
                      height: 285.v,
                      width: 135.h,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/img_30.png',
                      height: 300.v,
                      width: 180.h,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.v),
              child: Center(
                  child: Text(
                'Upload Post',
                style: TextStyle(
                    fontFamily: 'Sanchez',
                    fontSize: 49,
                    fontWeight: FontWeight.w400),
              )),
            ),
            Container(
              height: 310.v,
              child: Stack(children: [
                Positioned(
                    left: 30.h,
                    child: Image.asset(
                      'assets/images/img_21.png',
                      height: 300.v,
                      width: 300.h,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 40.v,
                    left: 189.h,
                    child: Image.asset(
                      'assets/images/img_22.png',
                      height: 39.v,
                      width: 39.h,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 100.v,
                    left: 176.h,
                    child: Text(
                      'Upload\ndetails\nabout\nyour\nplants',
                      style: TextStyle(
                          fontFamily: 'Sanchez',
                          fontWeight: FontWeight.w400,
                          fontSize: 24),
                    )),
                Positioned(
                    top: 170.v,
                    left: 60.h,
                    child: Image.asset(
                      'assets/images/img_23.png',
                      height: 35.v,
                      width: 44.h,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 250.v,
                    left: 189.h,
                    child: Image.asset(
                      'assets/images/img_24.png',
                      height: 44.v,
                      width: 33.h,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 170.v,
                    right: 60.h,
                    child: Image.asset(
                      'assets/images/img_25.png',
                      height: 35.v,
                      width: 35.h,
                      fit: BoxFit.fill,
                    )),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50.h, bottom: 70.v),
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Readyupload()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 30,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
