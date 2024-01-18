import 'package:flutter/material.dart';
import 'package:plantnet2/upload333333333.dart';

class Moreuploadpg extends StatefulWidget {
  const Moreuploadpg({super.key});

  @override
  State<Moreuploadpg> createState() => _MoreuploadpgState();
}

class _MoreuploadpgState extends State<Moreuploadpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:SizedBox(height: MediaQuery.of(context).size.height,
  child: Column(
    children: [
      Container(
        height: 300,
        child: Stack(children: [
          Positioned(top:60,left:50,child: Image.asset('assets/images/img_26.png',height: 210,width: 288,fit: BoxFit.fill,)),
          Positioned(top:120,left:140,child: Image.asset('assets/images/img_27.png',height: 82,width: 95,fit: BoxFit.fill,)),
        ],),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text('More details of',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 50),),
      ),
      Center(child: Text('plants',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w400,fontFamily: 'Sanchez'),)),
      Container(height: 50,
        child: ListTile(leading: Text('Price',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,fontFamily: 'Sanchez'),),title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          prefix: Text('Rs'),
            hintText: '2000',
          ),),
        ),),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(height: 50,
          child: ListTile(leading: Text('Discount',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,fontFamily: 'Sanchez'),),title: Padding(
            padding: const EdgeInsets.only(left: 65),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: '10%',
            ),),
          ),),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(height: 50,
          child: ListTile(leading: Text('Mode of transportation',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,fontFamily: 'Sanchez'),),title: Padding(
            padding: const EdgeInsets.only(),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Home delivery',
            ),),
          ),),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(height: 50,
          child: ListTile(leading: Text('Nurturing Kit',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,fontFamily: 'Sanchez'),),title: Padding(
            padding: const EdgeInsets.only(),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Available',
              ),),
            ),
          ),),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40,right: 20),
        child: Align(alignment:Alignment.topRight,child: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Upload3()));
        }, icon:Icon(Icons.arrow_forward_ios_outlined,size: 40,))),
      )
    ],

  ),
) ,
    );
  }
}
