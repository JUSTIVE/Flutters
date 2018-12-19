import 'package:flutter/material.dart';

class TaraProfile extends StatefulWidget {
  @override
  _TaraProfileState createState() => _TaraProfileState();
}

class _TaraProfileState extends State<TaraProfile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            // SizedBox(
            //   // height: 600,
            // ),
            // Container(
            //   color: Colors.blue,
            //   width: double.infinity,
            //   height: double.infinity,
            // )
          ],
        ),
        Positioned(
          left: -300,
          // right:50,
          top: -500,
          child: Container(
            width: 1000,
            height: 1000,
            decoration: BoxDecoration(
                // color: Color(0xfffafafa),
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(500))),
          ),
        ),
      ],
    );
  }
}
