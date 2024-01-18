import 'package:flutter/material.dart';
import 'package:plantnet2/plantimgpg.dart';

class Readyupload extends StatefulWidget {
  const Readyupload({super.key});

  @override
  State<Readyupload> createState() => _ReadyuploadState();
}

class _ReadyuploadState extends State<Readyupload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SizedBox(height: MediaQuery.of(context).size.height,
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 230),
        child: Align(alignment: Alignment.bottomCenter,
          child: Container(height: 620,
            child: Stack(
              children: [
                Positioned(child: Image.asset('assets/images/img_31.png',height: 620,width: 640,fit: BoxFit.fill,)),
                Positioned(top:10,left:20,child: Image.asset('assets/images/img_32.png',height: 200,width: 200,fit: BoxFit.fill,)),
                Positioned(top:200,left:50,child: Image.asset('assets/images/img_33.png',height: 206,width: 317,fit: BoxFit.fill,)),
                Positioned(top:220,left:100,child: Text('Ready to upload?',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,fontFamily: 'Sanchez'),)),
                Positioned(top:270,left:160,child: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Plantimage())); }, child: Text('OK',style: TextStyle(fontFamily: 'Sanchez',fontSize: 30,fontWeight: FontWeight.w400,color: Colors.black),),)),
                Positioned(top:320,left:150,child: TextButton(onPressed: () {  }, child: Text('Cancel',style: TextStyle(fontFamily: 'Sanchez',fontSize: 30,fontWeight: FontWeight.w400,color: Colors.black),),)),
                Positioned(top:370,left:200,child: Image.asset('assets/images/img_34.png',height: 200,width: 200,fit: BoxFit.fill,))

              ]
              ),
            ),
        ),
      ),

    ],
  ),
),
    );
  }
}
