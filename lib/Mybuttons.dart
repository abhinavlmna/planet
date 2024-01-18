import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mybuttons extends StatefulWidget {
   Mybuttons({super.key});

  @override
  State<Mybuttons> createState() => _MybuttonsState();
}

class _MybuttonsState extends State<Mybuttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ElevatedButton(onPressed: () {  }, child: Icon(Icons.call),

            ),
            TextButton(onPressed: (){},
                child:Icon(Icons.call)),
            FloatingActionButton(onPressed:(){
              print('pressed');
            },
              child: Icon(Icons.call),
            ),

          ],
        ),
      ),
    );
  }
}
