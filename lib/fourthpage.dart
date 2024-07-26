import 'package:flutter/material.dart';
import 'package:plantnet2/fifthpage.dart';
import 'package:plantnet2/screensize.dart';

class Myfourthpage extends StatefulWidget {
  const Myfourthpage({super.key});

  @override
  State<Myfourthpage> createState() => _MyfourthpageState();
}

class _MyfourthpageState extends State<Myfourthpage> {
  TextEditingController _phonenmbr = TextEditingController();
  TextEditingController _otp = TextEditingController();
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
                padding: EdgeInsets.only(top: 73.v, left: 60.h),
                child: Image.asset(
                  'assets/images/img_3.png',
                  height: 310.v,
                  width: 308.h,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Sign up',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 64,
                  fontFamily: 'Sanchez',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter your phone number',
                  style: TextStyle(
                    fontFamily: 'Sanchez',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 20.h),
                child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   _formKey.currentState?.validate();
                  // },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter a Phone Number";
                    } else if (value.length < 10) {
                      return "Phone number must have 10 digits";
                    }
                    return null;
                  },
                  controller: _phonenmbr,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    fontFamily: 'Sanchez',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 20.h),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  // onChanged: (value) {
                  //   _formKey.currentState?.validate();
                  // },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Enter your OTP';
                    }
                    return null;
                  },
                  controller: _otp,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    print('Pressed');
                  },
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Resend OTP?',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: 'Sanchez',
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Container(
                  height: 60.v,
                  child: Stack(children: [
                    Positioned(child: Image.asset('assets/images/img_35.png')),
                    Positioned(
                        top: 0.v,
                        left: 30.h,
                        child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState != null &&
                                _formKey.currentState!.validate()) {
                              print('${_otp.text}, ${_phonenmbr.text}');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Myfifthpage()));
                            }
                          },
                          child: Text(
                            'Verify',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Sanchez',
                                color: Colors.black),
                          ),
                        )),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
