import 'package:flutter/material.dart';
import 'package:plantnet2/eightpage.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/update3.dart';
import 'package:plantnet2/uploadpg.dart';

class Myscndupdate extends StatefulWidget {
  const Myscndupdate({super.key});

  @override
  State<Myscndupdate> createState() => _MyscndupdateState();
}

class _MyscndupdateState extends State<Myscndupdate> {
  TextEditingController _storename = TextEditingController();
  TextEditingController _storeaddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Image.asset(
            'assets/images/img_19.png',
            height: 293.v,
            width: 341.h,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'Update Store Details',
          style: TextStyle(
            fontSize: 45,
            fontFamily: 'Sanchez',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Store name',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Sanchez',
                    fontWeight: FontWeight.w400),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Enter your store name'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 40),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Store Adress',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Sanchez',
                    fontSize: 20),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            maxLines: null,
            minLines: 4,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Enter your store address'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40),
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
                    left: 33.h,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Updateprofile3()));
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Sanchez',
                            color: Colors.black),
                      ),
                    )),
              ])),
        ),
      ]),
    ));
  }
}
