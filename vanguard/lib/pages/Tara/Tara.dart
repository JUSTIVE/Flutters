import 'package:flutter/material.dart';
import 'package:vanguard/VanguardDrawer.dart';
import 'package:statusbar/statusbar.dart';
class Tara extends StatefulWidget {
  @override
  _TaraState createState() => _TaraState();
}

class _TaraState extends State<Tara> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: VanguardDrawer(),
      backgroundColor: Color(0xFFFAFAFA),
      body: ListView(
        children: <Widget>[
          
          Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 15,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage("res/prevu.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(width: 15,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
