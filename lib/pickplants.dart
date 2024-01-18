import 'package:flutter/material.dart';

class Mypick extends StatefulWidget {
  const Mypick({super.key});

  @override
  State<Mypick> createState() => _MypikState();
}

class _MypikState extends State<Mypick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height:400 ,
              child: Image.asset('assets/images/img_7.png',height: 395,width: 357,fit: BoxFit.fill,),
            ),
            Container(
              height: 60,
              child: Text('Pick plants',style: TextStyle(fontSize: 46,fontWeight: FontWeight.w400,fontFamily: 'Sanchez'),),
            ),
            Container(
              height: 140,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/img_9.png',height:45,width:53,fit: BoxFit.fill,),
                        Text('Flowering plants',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 17),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/img_9.png',height: 45,width: 53,fit: BoxFit.fill,),
                        Text('Low Light Plants.',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 17),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/img_9.png',height: 45,width: 53,fit: BoxFit.fill,),
                        Text('Low maintenance plants',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 17),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/img_9.png',height: 45,width: 53,fit: BoxFit.fill,),
                        Text('Air purifying plants',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 17),)
                      ],
                    ),
                  ), Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/img_9.png',height: 45,width: 53,fit: BoxFit.fill,),
                        Text('cacti and Succulents',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 17),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/img_9.png',height: 45,width: 53,fit: BoxFit.fill,),
                        Text('Hanging plants',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 17),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/img_9.png',height: 45,width: 53,fit: BoxFit.fill,),
                        Text('Medicinal & Aromatic plants',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 17),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/img_9.png',height: 45,width: 53,fit: BoxFit.fill,),
                        Text('Fruit plants',style: TextStyle(fontFamily: 'Sanchez',fontWeight: FontWeight.w400,fontSize: 17),)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )

    );
  }
}
