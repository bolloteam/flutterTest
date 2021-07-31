import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'circle_container.dart';

class Avatar extends StatefulWidget{
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {

  File? _file;
  
  _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _file = new File(image!.path);//,image.;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          _file == null
          ? SvgPicture.network('https://image.flaticon.com/icons/svg/1177/1177568.svg')
          : Image.file(_file!),
          /*
          Container(color: Colors.red, width: 100, height: 100,),
          Container(color: Colors.green, width: 50, height: 50,),
          */
          Positioned(
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 30,
              child: 
              CircleContainer(
                child: Icon(Icons.edit),
                //color: Colors.green, 
                size: 40,
                /*
                decoration: BoxDecoration(
                  color: Color(0xffcccccc), shape: BoxShape.circle
                ),*/
              ), 
              onPressed: (){
                _pickImage();
              },
            ),
          ),
        ],
      ),
    );
  }
}