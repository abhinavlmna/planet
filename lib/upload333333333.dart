import 'package:flutter/material.dart';
import 'package:plantnet2/readyupload.dart';

class Upload3 extends StatefulWidget {
  const Upload3({super.key});

  @override
  State<Upload3> createState() => _Upload3State();
}

class _Upload3State extends State<Upload3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90,left: 30),
              child: Container(
                height: 300,
                child: Row(
                  children: [
                    Image.asset('assets/images/img_29.png',height: 289,width: 142,fit: BoxFit.fill,),
                    Image.asset('assets/images/img_30.png',height: 309,width: 200,fit: BoxFit.fill,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(child: Text('Upload Post',style: TextStyle(fontFamily: 'Sanchez',fontSize: 49,fontWeight: FontWeight.w400),)),
            ),
            Container(height: 360,
              child: Stack(
                  children:[
                    Positioned(top:20,left:20,child: Image.asset('assets/images/img_21.png',height: 356,width: 355,fit: BoxFit.fill,)),
                    Positioned(top: 70,left: 189,
                        child:Image.asset('assets/images/img_22.png',height: 39,width: 39,fit: BoxFit.fill,)),
                    Positioned(top:130,left:176,child:Text('Upload',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 24),)),
                    Positioned(top:150,left:176,child: Text('details',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,fontFamily: 'Sanchez'),)),
                    Positioned(top:170,left:165,child: Text('about your',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,fontFamily: 'Sanchez'),)),
                    Positioned(top:190,left:176,child: Text('plants',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,fontFamily: 'Sanchez'),)),
                    Positioned(top:170,left:60,child: Image.asset('assets/images/img_23.png',height: 35,width: 44,fit: BoxFit.fill,)),
                    Positioned(top:250,left:189,child: Image.asset('assets/images/img_24.png',height: 44,width: 33,fit: BoxFit.fill,)),
                    Positioned(top:170,right:60,child: Image.asset('assets/images/img_25.png',height: 35,width: 35,fit: BoxFit.fill,)),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(alignment:Alignment.topRight,child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Readyupload()));
              }, icon: Icon(Icons.arrow_forward_ios_outlined,size:30 ,))),
            )
          ],
        ),
      ),
      

    );
  }
}
