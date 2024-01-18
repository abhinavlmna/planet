import 'package:flutter/material.dart';
import 'package:plantnet2/paymentpg.dart';
enum Plantdelivery{Deliveryavailable,Deliverynotavailable}
class Myeightpage extends StatefulWidget {
  const Myeightpage({super.key});

  @override
  State<Myeightpage> createState() => _MyeightpageState();
}

class _MyeightpageState extends State<Myeightpage> {
  Plantdelivery _mydelivery=Plantdelivery.Deliveryavailable;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45,top: 25),
              child: Image.asset('assets/images/img_5.png',height: 264,width: 338,fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 25),
              child: Text('Transportation',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 50,
                fontFamily: 'Sanchez',
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 100),
              child: ListTile(
                title: Text('Delivery available',
                style: TextStyle(
                  fontFamily: 'Sanchez',
                  fontSize: 25,
                ),
                ),
                leading: Radio(value: Plantdelivery.Deliveryavailable, groupValue: _mydelivery, onChanged: (Plantdelivery? value) { setState(() {
                  _mydelivery=value!;
                }); },),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 30),
              child: ListTile(
                title: Text('Delivery not available',
                style: TextStyle(
                  fontFamily: 'Sanchez',
                  fontSize: 25,
                ),
                ),
                leading: Radio(value: Plantdelivery.Deliverynotavailable, groupValue: _mydelivery, onChanged: (Plantdelivery? value) { setState(() {
                  _mydelivery=value!;
                }); },),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40,top: 130),
              child: Align(alignment:Alignment.bottomRight,child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Mypaymentpage()));
              }, icon: Icon(Icons.arrow_forward_ios_outlined,size: 30,))),
            )

          ],
        ),
      ),
    );
  }
}
