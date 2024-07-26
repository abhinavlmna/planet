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
        body: Column(
      children: [
        Image.asset(
          'assets/images/img_7.png',
          height: 380,
          width: 357,
          fit: BoxFit.fill,
        ),
        Text(
          'Pick plant type',
          style: TextStyle(
            fontFamily: 'Sanchez',
            fontSize: 45,
          ),
        ),
        ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [ImageIcon(AssetImage('assets/image/iconpick.png'))],
            )
          ],
        )
      ],
    ));
  }
}
