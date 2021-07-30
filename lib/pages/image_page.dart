import 'package:firstapp/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {

  ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
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
              Expanded(
                child: Center(
                  child: Text("Image Page"),
                ),),
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