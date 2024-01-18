import 'package:flutter/material.dart';
import 'package:plantnet2/pickplants.dart';
import 'package:plantnet2/uploadpg.dart';
enum Payment{cashondelivery,onlinepayment}
class Mypaymentpage extends StatefulWidget {
  const Mypaymentpage({super.key});

  @override
  State<Mypaymentpage> createState() => _MypaymentpageState();
}

class _MypaymentpageState extends State<Mypaymentpage> {
Payment _mypayment=Payment.cashondelivery;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 40),
              child: Image.asset('assets/images/img_20.png',height: 344,width: 342,fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Payment method',style: TextStyle(fontSize: 46,fontWeight: FontWeight.w400,fontFamily: 'Sanchez'),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top:60),
              child: ListTile(
                title: Text('Cash on delivery',
                  style: TextStyle(
                    fontFamily: 'Sanchez',
                    fontSize: 25,
                  ),
                ),
                leading: Radio(value: Payment.cashondelivery, groupValue: _mypayment, onChanged: (Payment? value) { setState(() {
                  _mypayment=value!;
                }); },),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 40),
              child: ListTile(
                title: Text('Online payment',
                  style: TextStyle(
                    fontFamily: 'Sanchez',
                    fontSize: 25,
                  ),
                ),
                leading: Radio(value: Payment.onlinepayment, groupValue: _mypayment, onChanged: (Payment? value) { setState(() {
                  _mypayment=value!;
                }); },),
              ),
            ),
            Align(alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 66,right: 45),
                child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Upload()));
                }, icon:Icon(Icons.arrow_forward_ios_outlined,size: 30,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
