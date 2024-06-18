import 'package:flutter/material.dart';
import 'package:plantnet2/moreupload.dart';
import 'package:plantnet2/screensize.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.h, top: 45.v),
              child: Image.asset(
                'assets/images/upload2.png',
                height: 285.v,
                width: 263.h,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Text(
                'Upload Post',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 46,
                    fontFamily: 'Sanchez'),
              ),
            ),
            Container(
              height: 360.v,
              width: 340.h,
              child: Stack(children: [
                Positioned(
                    top: 20.v,
                    left: 10.h,
                    child: Image.asset(
                      'assets/images/img_21.png',
                      height: 320.v,
                      width: 320.h,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 70.v,
                    left: 189.h,
                    child: Image.asset(
                      'assets/images/img_22.png',
                      height: 39.v,
                      width: 39.h,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 130.v,
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
                    top: 270.v,
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
              padding: EdgeInsets.only(bottom: 60.v, right: 5.h, left: 270.h),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Moreuploadpg()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 40,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
