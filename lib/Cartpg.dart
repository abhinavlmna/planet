import 'package:flutter/material.dart';
import 'package:plantnet2/plantimgpg.dart';
import 'package:plantnet2/wishlistpg.dart';

import 'Chatpg.dart';
class Carting {
  late String image;
  late String name;
  late String price;
  late String quantity;
  late String place;
  Carting(
      {required this.image,
        required this.name,
        required this.price,
        required this.quantity,
        required this.place});
}

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  List<Carting>Cartlist=[
    Carting(image: 'assets/images/img_48.png', name: 'Tulips', price: '100/-', quantity: '1', place: 'Indoor'),
    Carting(image: 'assets/images/img_47.png', name: 'Gooseberry', price: '550/-', quantity: '2', place:'Outdoor'),
    Carting(image: 'assets/images/img_49.png', name: 'Tulips', price: '230/-', quantity: '3', place: 'Indoor'),
    Carting(image: 'assets/images/img_48.png', name: 'Tulips', price: '100/-', quantity: '1', place: 'Indoor'),
    Carting(image: 'assets/images/img_47.png', name: 'Gooseberry', price: '550/-', quantity: '2', place:'Outdoor'),
    Carting(image: 'assets/images/img_49.png', name: 'Tulips', price: '230/-', quantity: '3', place: 'Indoor'),
    Carting(image: 'assets/images/img_48.png', name: 'Tulips', price: '100/-', quantity: '1', place: 'Indoor'),
    Carting(image: 'assets/images/img_47.png', name: 'Gooseberry', price: '550/-', quantity: '2', place:'Outdoor'),
    Carting(image: 'assets/images/img_49.png', name: 'Tulips', price: '230/-', quantity: '3', place: 'Indoor'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body:Column(
        children: [
          Container(
            height: 730,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Cartlist.length,
              itemBuilder: (BuildContext context, int index) {
                Carting C = Cartlist[index];
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
                              '${C.image}',
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
                                '${C.name}',
                                style: TextStyle(
                                    fontFamily: 'Sanchez',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              )),
                          Positioned(
                              top: 40,
                              left: 230,
                              child: Text(
                                '${C.price}',
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
                              child: Text('${C.place}',style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Sanchez',fontSize: 20),)),
                          Positioned(
                              top: 130,
                              left: 60,
                              child: Text('Qty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Sanchez'),)),
                          Positioned(
                              top: 130,
                              left: 120,
                              child: Text('${C.quantity}',style: TextStyle(fontSize: 18,fontFamily: 'Sanchez',fontWeight: FontWeight.w100),)),
                          Positioned(
                              top: 180,
                              left: 30,
                              child: Image.asset('assets/images/img_40.png',height: 24,width: 30,fit: BoxFit.fill,)),
                          Positioned(
                              top: 180,
                              left: 100,
                              child: Image.asset('assets/images/img_41.png',height: 24,width: 30,fit: BoxFit.fill,)),
                          Positioned(
                              top: 165,
                              left: 160,
                              child: IconButton(onPressed: () {  }, icon: Icon(Icons.delete,size: 25,),)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
      ),
        ],
      ) ,
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
