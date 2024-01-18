import 'package:flutter/material.dart';
import 'package:plantnet2/moreupload.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 45),
              child: Image.asset('assets/images/Focus-pana 2.png',height: 285,width: 263,fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Upload Post',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 46,fontFamily: 'Sanchez'),),
            ),
            Container(height: 400,
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
              padding: const EdgeInsets.only(bottom: 30,right: 5,left: 270),
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Moreuploadpg()));
              }, icon: Icon(Icons.arrow_forward_ios_outlined,size: 40,)),
            )
          ],
        ),
      ),
    );
  }
}
