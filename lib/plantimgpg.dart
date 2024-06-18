import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:plantnet2/Cartpg.dart';
import 'package:plantnet2/Chatpg.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/wishlistpg.dart';

class Plantimage extends StatefulWidget {
  const Plantimage({super.key});

  @override
  State<Plantimage> createState() => _PlantimageState();
}

class _PlantimageState extends State<Plantimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 230,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, right: 100),
                      child: Text(
                        'Mulbery\nRs.1000\nTree store, Palakad',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                            fontFamily: 'Sanchez'),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10, left: 40),
                    //   child: Text(
                    //     'Rs.1000',
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.w400,
                    //         fontSize: 35,
                    //         fontFamily: 'Sanchez'),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10, left: 40),
                    //   child: Text(
                    //     'Tree trap Palakad',
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.w400,
                    //         fontSize: 28,
                    //         fontFamily: 'Sanchez'),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                height: 250.v,
                width: 400.v,
                child: Stack(
                  children: [
                    Positioned(
                        left: 10,
                        top: 20,
                        child: Image.asset(
                          'assets/images/img_40.png',
                          height: 28.v,
                          width: 35.h,
                          fit: BoxFit.contain,
                        )),
                    Positioned(
                        left: 20,
                        child: Image.asset(
                          'assets/images/img_39.png',
                          height: 230.v,
                          width: 380.h,
                          fit: BoxFit.contain,
                        )),
                    Positioned(
                        left: 10,
                        top: 100,
                        child: Image.asset(
                          'assets/images/img_41.png',
                          height: 30.v,
                          width: 40.h,
                          fit: BoxFit.contain,
                        )),
                    Positioned(
                        left: 13,
                        top: 170,
                        child: Image.asset(
                          'assets/images/img_42.png',
                          height: 30.v,
                          width: 28.h,
                          fit: BoxFit.contain,
                        )),
                  ],
                ),
              ),
              Container(
                height: 170.v,
                width: 300.h,
                child: Stack(
                  children: [
                    Positioned(
                        child: Image.asset(
                      'assets/images/img_43.png',
                      height: 166.v,
                      width: 295.h,
                      fit: BoxFit.fill,
                    )),
                    Positioned(
                        left: 150,
                        top: 55,
                        child: Image.asset(
                          'assets/images/img_44.png',
                          height: 42.v,
                          width: 45.h,
                          fit: BoxFit.fill,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: AutoSizeText(
                  'This tree makes your earn about 50000000 and this and is a magical tree of fruits as grass ',
                  style: TextStyle(fontSize: 30),
                  maxLines: 4,
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
