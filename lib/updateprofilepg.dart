import 'package:flutter/material.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/update2.dart';

class Myupdate extends StatefulWidget {
  const Myupdate({super.key});

  @override
  State<Myupdate> createState() => _MyupdateState();
}

class _MyupdateState extends State<Myupdate> {
  TextEditingController _c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 10),
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_a_photo_outlined,
                        size: 58,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                'assets/images/img_18nw.png',
                height: 318.v,
                width: 318.h,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Full name',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Sanchez',
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter your full name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Address',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Sanchez',
                        fontSize: 24),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                maxLines: null,
                minLines: 4,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Enter your address'),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 40, top: 30),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Myscndupdate()));
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
