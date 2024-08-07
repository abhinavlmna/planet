import 'package:flutter/material.dart';
import 'package:plantnet2/feedpage.dart';
import 'package:plantnet2/plantimgpg.dart';
import 'package:plantnet2/screensize.dart';

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

  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wish list',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 732.v,
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
                                  '${W.image}',
                                  height: 109.v,
                                  width: 165.h,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                  left: 300.h,
                                  child: Image.asset(
                                    'assets/images/img_52nw.png',
                                    height: 28.v,
                                    width: 30.h,
                                    fit: BoxFit.fill,
                                  )),
                              Positioned(
                                  top: 10.v,
                                  left: 210.h,
                                  child: Text(
                                    '${W.name}',
                                    style: TextStyle(
                                        fontFamily: 'Sanchez',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Positioned(
                                  top: 40.v,
                                  left: 230.h,
                                  child: Text(
                                    '${W.price}',
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
                                    '${W.place}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Sanchez',
                                        fontSize: 20),
                                  )),
                              Positioned(
                                  top: 130.v,
                                  left: 30.h,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.lightGreen,
                                    size: 20,
                                  )),
                              Positioned(
                                  top: 130.v,
                                  left: 50.h,
                                  child: Text(
                                    '${W.rating}',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Sanchez',
                                        fontWeight: FontWeight.w100),
                                  )),
                              Positioned(
                                  top: 130.v,
                                  left: 100.h,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.lightGreen,
                                    size: 20,
                                  )),
                              Positioned(
                                  top: 130.v,
                                  left: 120.h,
                                  child: Text(
                                    '${W.wishcount}',
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
                                  top: 170.v,
                                  left: 150.h,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.shopping_cart_outlined,
                                      size: 25,
                                    ),
                                  )),
                              Positioned(
                                  top: 160.v,
                                  left: 300.h,
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
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
              child: Icon(
                Icons.grass,
                color: _selectedIndex == 0 ? Colors.green : Colors.black,
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Feedpage()));
              },
            ),
            label: 'leaf',
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(
                  Icons.favorite_border,
                  color: _selectedIndex == 1 ? Colors.green : Colors.black,
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wishlist()));
                },
              ),
              label: 'like'),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: _selectedIndex == 2 ? Colors.green : Colors.black,
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
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
                setState(() {
                  _selectedIndex = 3;
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chatpage()));
              },
            ),
            label: 'message',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.grey,
      ),
    );
  }
}
