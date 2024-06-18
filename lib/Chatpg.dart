import 'package:flutter/material.dart';
import 'package:plantnet2/screensize.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  TextEditingController _message =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 192, 192),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 208, 192, 192),
        toolbarHeight: 100,
        leading: CircleAvatar(
          radius: 30,
          child: Icon(Icons.person),
        ),
        title: Text(
          'Saranjith p ',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Icon(Icons.call),
          SizedBox(
            width: 30.h,
          ),
          Icon(
            Icons.video_call,
            size: 30,
          ),
          SizedBox(
            width: 30.h,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        children:  [
          ChatBubble(
            text: 'How was the concert?',
            isCurrentUser: false,
          ),
          ChatBubble(
            text: 'Awesome! Next time you gotta come as well!',
            isCurrentUser: true,
          ),
          ChatBubble(
            text: 'Ok, when is the next date?',
            isCurrentUser: false,
          ),
          ChatBubble(
            text: 'They\'re playing on the 20th of November',
            isCurrentUser: true,
          ),
          ChatBubble(
            text: 'Let\'s do it!',
            isCurrentUser: false,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h,right: 10.h,bottom: 10.v,top: 380.v),
            child: TextField(

              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  prefixIcon: Icon(Icons.mood),
                  suffixIcon: Icon(Icons.attach_file),
                  suffix: Icon(Icons.camera_alt_outlined),
              labelText: 'Message'
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.isCurrentUser,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: isCurrentUser
                ? Color.fromARGB(255, 24, 200, 65)
                : Color.fromARGB(255, 87, 184, 184),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isCurrentUser ? Colors.white : Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
