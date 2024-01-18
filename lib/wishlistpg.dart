import 'package:flutter/material.dart';
import 'package:plantnet2/plantimgpg.dart';

import 'Cartpg.dart';
import 'Chatpg.dart';

class Wishing {
  late String image;
  late String name;
  late String price;
  late String rating;
  late String wishcount;
  late String place;
  Wishing(
      {required this.image,
      required this.name,
      required this.price,
      required this.rating,
      required this.wishcount,
      required this.place});
}

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List<Wishing> Wlist = [
    Wishing(
        image: 'assets/images/img_47.png',
        name: 'Tulips',
        price: '100/-',
        rating: '26',
        wishcount: '1000',
        place: 'Indoor'),
    Wishing(
        image: 'assets/images/img_48.png',
        name: 'Gooseberry',
        price: '100/-',
        rating: '26',
        wishcount: '1000',
        place: 'Outdoor'),
    Wishing(
        image: 'assets/images/img_49.png',
        name: 'Anthoorium',
        price: '100/-',
        rating: '26',
        wishcount: '1000',
        place: 'Outdoor'),
    Wishing(
        image: 'assets/images/img_47.png',
        name: 'Tulips',
        price: '100/-',
        rating: '26',
        wishcount: '1000',
        place: 'Indoor'),
    Wishing(
        image: 'assets/images/img_48.png',
        name: 'Gooseberry',
        price: '100/-',
        rating: '26',
        wishcount: '1000',
        place: 'Outdoor'),
    Wishing(
        image: 'assets/images/img_49.png',
        name: 'Anthoorium',
        price: '100/-',
        rating: '26',
        wishcount: '1000',
        place: 'Outdoor'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wish list',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ),
        body: Column(
      children: [
        Container(
          height: 732,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: Wlist.length,
            itemBuilder: (BuildContext context, int index) {
              Wishing W = Wlist[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Container(
                    height: 220,width: 310,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Image.asset(
                            '${W.image}',
                            height: 109,
                            width: 165,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                            left: 350,
                            child:Image.asset('assets/images/img_52.png',height: 28,width: 30,fit: BoxFit.fill,)),
                        Positioned(
                            top: 10,
                            left: 210,
                            child: Text(
                              '${W.name}',
                              style: TextStyle(
                                  fontFamily: 'Sanchez',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                        Positioned(
                            top: 40,
                            left: 230,
                            child: Text(
                              '${W.price}',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Sanchez',
                                  fontWeight: FontWeight.w600),
                            )),
                        Positioned(
                            top: 70,
                            left: 210,
                            child: Image.asset(
                              'assets/images/img_51.png',
                              height: 26,
                              width: 21,
                              fit: BoxFit.fill,
                            )),
                        Positioned(
                            top: 70,
                            left: 240,
                            child: Text('${W.place}',style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Sanchez',fontSize: 20),)),
                        Positioned(
                            top: 130,
                            left: 30,
                            child: Icon(Icons.star,color: Colors.lightGreen,size: 20,)),
                        Positioned(
                            top: 130,
                            left: 50,
                            child: Text('${W.rating}',style: TextStyle(fontSize: 18,fontFamily: 'Sanchez',fontWeight: FontWeight.w100),)),
                        Positioned(
                            top: 130,
                            left: 100,
                            child: Icon(Icons.favorite,color: Colors.lightGreen,size: 20,)),
                        Positioned(
                            top: 130,
                            left: 120,
                            child: Text('${W.wishcount}',style: TextStyle(fontSize: 18,fontFamily: 'Sanchez',fontWeight: FontWeight.w100),)),
                        Positioned(
                            top: 180,
                            left: 30,
                            child: Image.asset('assets/images/img_40.png',height: 24,width: 30,fit: BoxFit.fill,)),
                        Positioned(
                            top: 180,
                            left: 100,
                            child: Image.asset('assets/images/img_41.png',height: 24,width: 30,fit: BoxFit.fill,)),
                        Positioned(
                            top: 170,
                            left: 150,
                            child: IconButton(onPressed: () {  }, icon: Icon(Icons.shopping_cart_outlined,size: 25,),)),
                        Positioned(
                            top: 160,
                            left: 300,
                            child: IconButton(onPressed: () {  }, icon: Icon(Icons.delete,size: 25,),)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
              child: Image.asset(
                'assets/images/img_45.png',
                height: 25,
                width: 25,
                fit: BoxFit.fill,
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Plantimage()));
              },
            ),
            label: 'leaf',

          ),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Wishlist()));
                },
              ),
              label: 'like'),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));
                },
              ),
              label: 'cart'),
          BottomNavigationBarItem(
            icon: InkWell(
              child: Image.asset(
                'assets/images/img_46.png',
                height: 21,
                width: 21,
                fit: BoxFit.fill,
              ),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Chatpage()));},
            ),
            label: 'message',
          ),
        ],
        backgroundColor: Colors.grey,
      ),
    );
  }
}
