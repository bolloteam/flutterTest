import 'package:firstapp/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              MyAppBar(
                leftIcon: Icons.chevron_left, 
                rightIcon: Icons.more, 
                onLeftClick: ()=> Navigator.pop(context),
                onRightClick: (){}),
            ],
          ),
        ),
      )
    );/*
      Center(
        child: Text("Chat Page"),
      ),
    )*/
  }
}