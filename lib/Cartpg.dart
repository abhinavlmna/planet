import 'package:flutter/material.dart';
import 'package:plantnet2/plantimgpg.dart';
import 'package:plantnet2/screensize.dart';
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
  List<Carting> Cartlist = [
    Carting(
        image: 'assets/images/img_48.png',
        name: 'Tulips',
        price: '100/-',
        quantity: '1',
        place: 'Indoor'),
    Carting(
        image: 'assets/images/img_47.png',
        name: 'Gooseberry',
        price: '550/-',
        quantity: '2',
        place: 'Outdoor'),
    Carting(
        image: 'assets/images/img_49.png',
        name: 'Tulips',
        price: '230/-',
        quantity: '3',
        place: 'Indoor'),
    Carting(
        image: 'assets/images/img_48.png',
        name: 'Tulips',
        price: '100/-',
        quantity: '1',
        place: 'Indoor'),
    Carting(
        image: 'assets/images/img_47.png',
        name: 'Gooseberry',
        price: '550/-',
        quantity: '2',
        place: 'Outdoor'),
    Carting(
        image: 'assets/images/img_49.png',
        name: 'Tulips',
        price: '230/-',
        quantity: '3',
        place: 'Indoor'),
    Carting(
        image: 'assets/images/img_48.png',
        name: 'Tulips',
        price: '100/-',
        quantity: '1',
        place: 'Indoor'),
    Carting(
        image: 'assets/images/img_47.png',
        name: 'Gooseberry',
        price: '550/-',
        quantity: '2',
        place: 'Outdoor'),
    Carting(
        image: 'assets/images/img_49.png',
        name: 'Tulips',
        price: '230/-',
        quantity: '3',
        place: 'Indoor'),
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 730.v,
                width: 360.h,
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
                          height: 220.v,
                          width: 310.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10.v,
                                left: 10.h,
                                child: Image.asset(
                                  '${C.image}',
                                  height: 109.v,
                                  width: 165.h,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                  left: 290.h,
                                  child: Image.asset(
                                    'assets/images/img_52nw.png',
                                    height: 28..v,
                                    width: 30.h,
                                    fit: BoxFit.fill,
                                  )),
                              Positioned(
                                  top: 10.v,
                                  left: 210.h,
                                  child: Text(
                                    '${C.name}',
                                    style: TextStyle(
                                        fontFamily: 'Sanchez',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Positioned(
                                  top: 40.v,
                                  left: 230.h,
                                  child: Text(
                                    '${C.price}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Sanchez',
                                        fontWeight: FontWeight.w600),
                                  )),
                              Positioned(
                                  top: 70.v,
                                  left: 210.h,
                                  child: Image.asset(
                                    'assets/images/img_51nw.png',
                                    height: 26.v,
                                    width: 21.h,
                                    fit: BoxFit.fill,
                                  )),
                              Positioned(
                                  top: 70.v,
                                  left: 240.h,
                                  child: Text(
                                    '${C.place}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Sanchez',
                                        fontSize: 20),
                                  )),
                              Positioned(
                                  top: 130.v,
                                  left: 60.h,
                                  child: Text(
                                    'Qty',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: 'Sanchez'),
                                  )),
                              Positioned(
                                  top: 130.v,
                                  left: 120.h,
                                  child: Text(
                                    '${C.quantity}',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Sanchez',
                                        fontWeight: FontWeight.w100),
                                  )),
                              Positioned(
                                  top: 180.v,
                                  left: 30.h,
                                  child: Image.asset(
                                    'assets/images/img_40nw.png',
                                    height: 24.v,
                                    width: 30.h,
                                    fit: BoxFit.fill,
                                  )),
                              Positioned(
                                  top: 180.v,
                                  left: 100.h,
                                  child: Image.asset(
                                    'assets/images/img_41nw.png',
                                    height: 24.v,
                                    width: 30.h,
                                    fit: BoxFit.fill,
                                  )),
                              Positioned(
                                  top: 165.v,
                                  left: 160.h,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete,
                                      size: 25,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
              child: Image.asset(
                'assets/images/img_45.png',
                height: 25.v,
                width: 25.h,
                fit: BoxFit.fill,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Plantimage()));
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wishlist()));
                },
              ),
              label: 'like'),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cartpage()));
                },
              ),
              label: 'cart'),
          BottomNavigationBarItem(
            icon: InkWell(
              child: Image.asset(
                'assets/images/img_46.png',
                height: 21.v,
                width: 21.h,
                fit: BoxFit.fill,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chatpage()));
              },
            ),
            label: 'message',
          ),
        ],
        backgroundColor: Colors.grey,
      ),
    );
  }
}
