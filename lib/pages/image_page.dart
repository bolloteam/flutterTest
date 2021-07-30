import 'package:firstapp/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class ImagesPageArgs{
  final String username;
  final bool isActive;

  ImagesPageArgs({required this.username, required this.isActive});
}


class ImagePage extends StatefulWidget {
  static final routeName = 'images';
  ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ImagesPageArgs;
    //final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;




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
                  child: Text("${args.username} is active?: ${args.isActive}"),
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