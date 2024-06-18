import 'package:flutter/material.dart';
import 'package:plantnet2/eightpage.dart';
import 'package:plantnet2/screensize.dart';
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
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on_outlined,
                    size: 70,
                  ))),
        ),
        Image.asset(
          'assets/images/img_19.png',
          height: 293.v,
          width: 341.h,
          fit: BoxFit.cover,
        ),
        Text(
          'Update Profile',
          style: TextStyle(
              fontSize: 55, fontFamily: 'Sanchez', fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
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
          padding: const EdgeInsets.only(top: 30, right: 20),
          child: Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Upload()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 30,
                  ))),
        )
      ]),
    ));
  }
}
