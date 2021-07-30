import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomMenuItem{
  
  final IconData icon;// 
  final String label;//Label Text
  BottomMenuItem({required this.icon, required this.label});
}

class BottomMenu extends StatelessWidget{

final List<BottomMenuItem> items;
BottomMenu({required this.items}):assert(items.length > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffff0f0f0),
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(items.length, (index) {

              final BottomMenuItem item = items[index];
                return 
                Expanded(
                  child: Container(
                    color: Colors.tealAccent,
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(item.icon),
                          SizedBox(height: 3),
                          Text(
                            item.label,
                            style: TextStyle(fontSize: 12, color: Colors.blue) ,
                          )
                        ],
                      ),
                      onPressed: (){}
                    ), 
                  )
                );
               /*
               return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //SvgPicture.asset('assets/icons/sun.svg', width:30),
                    Icon(item.icon),
                    Text(item.label),
                  ],
                );
                */
            })
            /*
            <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  //SvgPicture.asset('assets/icons/sun.svg', width:30),
                  Icon(Icons.home),
                  Text("Home"),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.history),
                  Text("Historial"),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.settings,),
                  Text("Configuracion"),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.more,),
                  Text("Más"),
                ],
              ),
            ],
            */
          ),
        ),
        /*BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "profile"),
          ],
        ),*/  
      );
  }

}