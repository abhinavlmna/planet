import 'package:flutter/material.dart';
import 'package:plantnet2/Cartpg.dart';
import 'package:plantnet2/Chatpg.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/wishlistpg.dart';

class Feedlist {
  late String image;
  late String name;
  late String price;
  late String wishlist;
  late String rating;
  Feedlist({
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.wishlist,
  });
}

class Feedpage extends StatefulWidget {
  const Feedpage({super.key});

  @override
  State<Feedpage> createState() => _FeedpageState();
}

class _FeedpageState extends State<Feedpage> {
  List<Feedlist> feedpagelist = [
    Feedlist(
      image: 'assets/images/feed1.png',
      name: 'Gooseberry',
      price: '1000',
      rating: '2.7 k',
      wishlist: '1 k',
    ),
    Feedlist(
      image: 'assets/images/feed2.png',
      name: 'Tulips',
      price: '100',
      rating: '3.7 k',
      wishlist: '2 k',
    ),
    Feedlist(
      image: 'assets/images/img_47.png',
      name: 'Cactus',
      price: '1500',
      rating: '2.7 k',
      wishlist: '1 k',
    ),
    Feedlist(
      image: 'assets/images/img_48.png',
      name: 'Mulberry',
      price: '1000',
      rating: '2.7 k',
      wishlist: '1 k',
    ),
    Feedlist(
      image: 'assets/images/img_49.png',
      name: 'Orchid',
      price: '1000',
      rating: '2.7 k',
      wishlist: '1 k',
    ),
    Feedlist(
      image: 'assets/images/feed1.png',
      name: 'Gooseberry',
      price: '1000',
      rating: '2.7 k',
      wishlist: '1 k',
    ),
    Feedlist(
      image: 'assets/images/feed2.png',
      name: 'Tulips',
      price: '1000',
      rating: '2.7 k',
      wishlist: '1 k',
    ),
    Feedlist(
      image: 'assets/images/img_47.png',
      name: 'Tulips',
      price: '1000',
      rating: '2.7 k',
      wishlist: '1 k',
    ),
  ];

  int _selectedIndex = 0; // Initialize with the index of 'leaf' icon

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 0:
        // Do nothing as it's the current page
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Wishlist()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cartpage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Chatpage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feed',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  itemBuilder: (BuildContext context, int index) {
                    Feedlist FL = feedpagelist[index];
                    return Container(
                      height: 268.v,
                      width: 360.h,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 5.v,
                            left: 10.h,
                            child: Image.asset(
                              'assets/images/feedbg.png',
                              height: 268.v,
                              width: 340.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            top: 20.v,
                            left: 50.h,
                            child: Text(
                              '${FL.name}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50.v,
                            left: 50.h,
                            child: Icon(
                              Icons.attach_money,
                              size: 20,
                            ),
                          ),
                          Positioned(
                            top: 50.v,
                            left: 70.h,
                            child: Text(
                              '${FL.price}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.v,
                            left: 280.h,
                            child: Icon(
                              Icons.star,
                              size: 20,
                            ),
                          ),
                          Positioned(
                            top: 20.v,
                            left: 300.h,
                            child: Text(
                              '${FL.rating}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50.v,
                            left: 280.h,
                            child: Icon(
                              Icons.favorite,
                              size: 20,
                            ),
                          ),
                          Positioned(
                            top: 50.v,
                            left: 300.h,
                            child: Text(
                              '${FL.wishlist}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 80.v,
                            left: 100.h,
                            child: Image.asset(
                              '${FL.image}',
                              height: 170.v,
                              width: 180.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: feedpagelist.length,
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
              child: Icon(
                Icons.grass,
                color: _selectedIndex == 0 ? Colors.green : Colors.black,
              ),
              onTap: () {
                _onItemTapped(0);
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
                _onItemTapped(1);
              },
            ),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              child: Icon(
                Icons.shopping_cart_outlined,
                color: _selectedIndex == 2 ? Colors.green : Colors.black,
              ),
              onTap: () {
                _onItemTapped(2);
              },
            ),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              child: Image.asset(
                'assets/images/img_46.png',
                height: 21.v,
                width: 21.h,
                fit: BoxFit.fill,
                color: _selectedIndex == 3 ? Colors.green : Colors.black,
              ),
              onTap: () {
                _onItemTapped(3);
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
