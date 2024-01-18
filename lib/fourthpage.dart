import 'package:flutter/material.dart';
import 'package:plantnet2/fifthpage.dart';

class Myfourthpage extends StatefulWidget {
  const Myfourthpage({super.key});

  @override
  State<Myfourthpage> createState() => _MyfourthpageState();
}

class _MyfourthpageState extends State<Myfourthpage> {
  TextEditingController _phonenmbr=TextEditingController();
  TextEditingController _otp=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:73,left: 60 ),
              child: Image.asset('assets/images/img_3.png',height: 310,width: 308,fit: BoxFit.cover,),
            ),
            Text('Sign up',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 64,
                fontFamily: 'Sanchez',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Enter your phone number',
                style: TextStyle(
                  fontFamily: 'Sanchez',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                maxLength: 10,
                validator: (String? value){
                  if(value!.length!=10){
                    return 'Must conatin 10 numbers';
                  }
                },
                controller: _phonenmbr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Enter OTP',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                fontFamily: 'Sanchez',
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                validator: (String? value){
                  if(value!.length==0){
                    return 'Enter your OTP';
                  }
                  else{
                    return null;
                  }
                },
                controller:_otp ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextButton(onPressed: (){
               print('Pressed');
             },child: Align(alignment: Alignment.topRight,
                 child:Text('Resend OTP?',
                   style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 16,
                     fontFamily: 'Sanchez',
                     color: Colors.black,
                   ),
                 )
             ),

                 ),
           ),
            Container(
                height: 60,
                child: Stack(children: [
                  Positioned(child: Image.asset('assets/images/img_35.png')),
                  Positioned(top:0,left: 30,
                      child: TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Myfifthpage()));},
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
    );
  }
}
