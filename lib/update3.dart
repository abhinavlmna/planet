import 'package:flutter/material.dart';
import 'package:plantnet2/pickplants.dart';
import 'package:plantnet2/screensize.dart';

enum WorkDays { Mondaytosaturday, weekends, weekdays, alldays }

class Updateprofile3 extends StatefulWidget {
  const Updateprofile3({super.key});

  @override
  State<Updateprofile3> createState() => _Updateprofile3State();
}

class _Updateprofile3State extends State<Updateprofile3> {
  TextEditingController _openingtime = TextEditingController();
  WorkDays _workingdays = WorkDays.Mondaytosaturday;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(
                'assets/images/img_19.png',
                height: 293.v,
                width: 341.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Update Store Details',
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'Sanchez',
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200, top: 30),
              child: Text(
                'Opening time',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Sanchez',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _openingtime,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    hintText: '9:00 am ',
                    hintStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 200,
              ),
              child: Text(
                'Closing time',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Sanchez',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _openingtime,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    hintText: '9:00 pm ',
                    hintStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                'Working days',
                style: TextStyle(fontSize: 25, fontFamily: 'Sanchez'),
              ),
            ),
            ListTile(
              title: Text(
                'Monday - saturday',
                style: TextStyle(fontSize: 20, fontFamily: 'Sanchez'),
              ),
              leading: Radio<WorkDays>(
                  activeColor: const Color.fromARGB(255, 4, 82, 7),
                  value: WorkDays.Mondaytosaturday,
                  groupValue: _workingdays,
                  onChanged: (WorkDays? value) {
                    setState(() {
                      _workingdays = value!;
                    });
                  }),
            ),
            ListTile(
              title: Text(
                'Weekends',
                style: TextStyle(fontSize: 20, fontFamily: 'Sanchez'),
              ),
              leading: Radio<WorkDays>(
                  activeColor: const Color.fromARGB(255, 4, 82, 7),
                  value: WorkDays.weekends,
                  groupValue: _workingdays,
                  onChanged: (WorkDays? value) {
                    setState(() {
                      _workingdays = value!;
                    });
                  }),
            ),
            ListTile(
              title: Text(
                'Weekdays',
                style: TextStyle(fontSize: 20, fontFamily: 'Sanchez'),
              ),
              leading: Radio<WorkDays>(
                  activeColor: const Color.fromARGB(255, 4, 82, 7),
                  value: WorkDays.weekdays,
                  groupValue: _workingdays,
                  onChanged: (WorkDays? value) {
                    setState(() {
                      _workingdays = value!;
                    });
                  }),
            ),
            ListTile(
              title: Text(
                'All days',
                style: TextStyle(fontSize: 20, fontFamily: 'Sanchez'),
              ),
              leading: Radio<WorkDays>(
                  activeColor: const Color.fromARGB(255, 4, 82, 7),
                  value: WorkDays.alldays,
                  groupValue: _workingdays,
                  onChanged: (WorkDays? value) {
                    setState(() {
                      _workingdays = value!;
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Container(
                  height: 60.v,
                  width: 160.h,
                  child: Stack(children: [
                    Positioned(
                        child: Image.asset(
                      'assets/images/img_35.png',
                    )),
                    Positioned(
                        top: 0.v,
                        left: 33.h,
                        child: TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Mypick()));
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: 'Sanchez',
                                color: Colors.black),
                          ),
                        )),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
