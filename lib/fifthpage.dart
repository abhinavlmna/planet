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
  TextEditingController _confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscuretextcnfrmpsswrd = true;
  bool _obscuretextpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.h, top: 20.v, right: 10.h),
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
                padding: EdgeInsets.only(left: 20.h, top: 20.v),
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
                padding: EdgeInsets.only(
                    top: 2.v, left: 20.h, right: 20.h, bottom: 10.v),
                child: TextFormField(
                  // onChanged: (value) {
                  //   _formKey.currentState?.validate();
                  // },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Must fill this field';
                    }
                    return null;
                  },
                  controller: _password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscuretextpassword = !_obscuretextpassword;
                            });
                          },
                          icon: Icon(
                            _obscuretextpassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ))),
                  obscureText: _obscuretextpassword,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h, top: 0.v, bottom: 10.v),
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
                padding: EdgeInsets.only(left: 20.h, right: 20.h),
                child: TextFormField(
                  // onChanged: (value) {
                  //   _formKey.currentState?.validate();
                  // },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Must fill this field';
                    }
                    if (value != _password.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  controller: _confirmPassword,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscuretextcnfrmpsswrd =
                                  !_obscuretextcnfrmpsswrd;
                            });
                          },
                          icon: Icon(
                            _obscuretextcnfrmpsswrd
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ))),
                  obscureText: _obscuretextcnfrmpsswrd,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.v, left: 40.h),
                child: Container(
                  height: 60.v,
                  width: 160.h,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image.asset(
                          'assets/images/img_35.png',
                          height: 53.v,
                          width: 123.h,
                        ),
                      ),
                      Positioned(
                        top: 0.v,
                        left: 20.h,
                        child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState != null &&
                                _formKey.currentState!.validate()) {
                              print(
                                  '${_password.text}, ${_confirmPassword.text}');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Myupdate(),
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
