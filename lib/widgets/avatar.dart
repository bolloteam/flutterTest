import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'circle_container.dart';

class Avatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          SvgPicture.network('https://image.flaticon.com/icons/svg/1177/1177568.svg'),
          /*
          Container(color: Colors.red, width: 100, height: 100,),
          Container(color: Colors.green, width: 50, height: 50,),
          */
          Positioned(
            child: CircleContainer(
              child: Icon(Icons.edit),
              //color: Colors.green, 
              size: 40,
              /*
              decoration: BoxDecoration(
                color: Color(0xffcccccc), shape: BoxShape.circle
              ),*/
            ), 
            right: 0, 
            top:0,
          )
        ],
      ),
    );
  }

}