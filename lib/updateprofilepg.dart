import 'package:flutter/material.dart';
import 'package:plantnet2/update2.dart';

class Myupdate extends StatefulWidget {
  const Myupdate({super.key});

  @override
  State<Myupdate> createState() => _MyupdateState();
}

class _MyupdateState extends State<Myupdate> {
  TextEditingController _c=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,right: 10),
              child: Align(alignment:Alignment.topRight,child: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_outlined,size: 58,))),
            ),
            Image.asset('assets/images/img_18.png',height: 378,width: 318,fit: BoxFit.cover,),
            Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Full name',style: TextStyle(fontSize: 24,fontFamily: 'Sanchez',fontWeight: FontWeight.w400),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText: 'Enter your full name',
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 10),
              child: Align(alignment:Alignment.topLeft,child: Text('Adress',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Sanchez',fontSize: 24),)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: 'Enter your adress'
                ),
              ),
            ),
            Align(alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right:40,top: 60),
                child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Myscndupdate()));}, icon:Icon(Icons.arrow_forward_ios_outlined,size: 30,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
