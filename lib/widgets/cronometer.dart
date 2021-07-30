import 'package:firstapp/widgets/circle_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cronometer extends StatefulWidget {
 final double initTime, fontSize;

 const Cronometer({Key? key, this.initTime = 0, this.fontSize = 30}) : super(key: key);

  @override
   CronometerState createState() =>  CronometerState();
}

class CronometerState extends State <Cronometer> {
  double _time = 0;

  @override
  void initState() { 
    super.initState();
    print("InitState");
    _time = widget.initTime; //initialitate from a widget parameter
  }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
          Text(_time.toString(), 
          style: TextStyle(fontSize: widget.fontSize),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                child: CircleContainer(child: Icon(Icons.play_arrow), size: 55), 
                onPressed: (){
                  setState(() {
                    _time = _time - 1;
                  });
                }),
              CupertinoButton(
                child: CircleContainer(child: Icon(Icons.stop), size: 55), 
                onPressed: (){
                  setState(() {
                    _time = _time + 1;
                  });
                }),
            ],
          ),
        ],
      ),
    );
  }
}