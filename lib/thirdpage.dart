import 'package:flutter/material.dart';
import 'package:plantnet2/feedpage.dart';
import 'package:plantnet2/fourthpage.dart';
import 'package:plantnet2/screensize.dart';

class Mythirdpage extends StatefulWidget {
  const Mythirdpage({super.key});

  @override
  State<Mythirdpage> createState() => _MythirdpageState();
}

class _MythirdpageState extends State<Mythirdpage> {
  TextEditingController _phno = TextEditingController();
  TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.v, left: 10.h),
                child: Image.asset(
                  'assets/images/img_2nw.png',
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
                  padding: EdgeInsets.only(left: 37.h, top: 5.v),
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
                padding: EdgeInsets.only(left: 30.h, right: 30.h, top: 5.v),
                child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   _formKey.currentState?.validate();
                  // },

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a phone number";
                    }
                    if (value.length < 10) {
                      return "Phone number must have 10 digits";
                    }
                    return null;
                  },
                  controller: _phno,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 155.h),
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
                padding: EdgeInsets.only(left: 30.h, right: 30.h),
                child: TextFormField(
                  // onChanged: (value) {
                  //   _formKey.currentState?.validate();
                  // },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Invalid password!";
                    }
                    if (value.length < 4) {
                      return "Password must have at least 4 characters";
                    }
                    if (!value.contains(RegExp(r'[A-Z]'))) {
                      return "Password must contain an uppercase letter";
                    }
                    if (!value.contains(RegExp(r'[0-9]'))) {
                      return "Password must contain a digit";
                    }
                    if (!value.contains(RegExp(r'[a-z]'))) {
                      return "Password must contain a lowercase letter";
                    }
                    if (!value.contains(RegExp(r'[#?!@$%^&*-]'))) {
                      return "Password must contain a special character";
                    }
                    return null; // Add this line to ensure null safety
                  },
                  controller: _password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
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
                padding: EdgeInsets.only(top: 20.v),
                child: Container(
                  height: 60.v,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image.asset('assets/images/img_35.png'),
                      ),
                      Positioned(
                        top: 0.v,
                        left: 30.h,
                        child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState != null &&
                                _formKey.currentState!.validate()) {
                              print('${_phno.text}, ${_password.text}');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Feedpage(),
                                ),
                              );
                            }
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Sanchez',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
