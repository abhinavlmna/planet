import 'package:flutter/material.dart';
import 'package:plantnet2/fourthpage.dart';
import 'package:plantnet2/screensize.dart';

class Mythirdpage extends StatefulWidget {
  const Mythirdpage({super.key});

  @override
  State<Mythirdpage> createState() => _MythirdpageState();
}

class _MythirdpageState extends State<Mythirdpage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _phno = TextEditingController();
  TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          key: _formKey,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 40),
              child: Image.asset(
                'assets/images/img_2.png',
                height: 350.v,
                width: 350.h,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Sanchez',
                fontSize: 64,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 37, top: 5),
                child: Text(
                  'Enter your phone number',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Sanchez',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
              child: TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _formKey.currentState?.validate();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter a Phone Number";
                  } else if (value.length < 10) {
                    return "Phone number must has 10 digits";
                  }
                },
                controller: _phno,
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.orangeAccent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37, right: 185),
              child: Text(
                'Enter your password',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Sanchez',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Invalid password!";
                  }
                  if (value.length < 4) {
                    return "Password must has 4 characters";
                  }
                  if (!value.contains(RegExp(r'[A-Z]'))) {
                    return "Password must has uppercase";
                  }
                  if (!value.contains(RegExp(r'[0-9]'))) {
                    return "Password must has digits";
                  }
                  if (!value.contains(RegExp(r'[a-z]'))) {
                    return "Password must has lowercase";
                  }
                  if (!value.contains(RegExp(r'[#?!@$%^&*-]'))) {
                    return "Password must has special characters";
                  } else
                    return null;
                },
                controller: _password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Sanchez',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  height: 60.v,
                  child: Stack(children: [
                    Positioned(child: Image.asset('assets/images/img_35.png')),
                    Positioned(
                        top: 0,
                        left: 30,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Submit',
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
