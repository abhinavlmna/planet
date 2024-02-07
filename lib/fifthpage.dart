import 'package:flutter/material.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/updateprofilepg.dart';

class Myfifthpage extends StatefulWidget {
  const Myfifthpage({super.key});

  @override
  State<Myfifthpage> createState() => _MyfifthpageState();
}

class _MyfifthpageState extends State<Myfifthpage> {
  TextEditingController _password = TextEditingController();
  TextEditingController _confrmpasswrd = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Image.asset(
                'assets/images/img_4.png',
                height: 360.v,
                width: 342.h,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 64,
                fontFamily: 'Sanchez',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Set password',
                  style: TextStyle(
                    fontFamily: 'Sanchez',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 2, left: 20, right: 20, bottom: 10),
              child: TextFormField(
                validator: (String? value) {
                  if (value!.length == 0) {
                    return 'Must fill this field';
                  } else {
                    return null;
                  }
                },
                controller: _password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 0, bottom: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Re-enter password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    fontFamily: 'Sanchez',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                validator: (String? value) {
                  if (value != _password) {
                    return 'password mismatch';
                  } else {
                    return null;
                  }
                },
                controller: _confrmpasswrd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                  height: 60.v,
                  child: Stack(children: [
                    Positioned(
                        child: Image.asset(
                      'assets/images/img_35.png',
                      height: 53.v,
                      width: 123.h,
                    )),
                    Positioned(
                        top: 0,
                        left: 20,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Myupdate()));
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
          ],
        ),
      ),
    );
  }
}
