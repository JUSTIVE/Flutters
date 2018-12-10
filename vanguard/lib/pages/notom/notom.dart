import 'package:flutter/material.dart';
import '../../VanguardDrawer.dart';
import 'leftarea.dart';
import 'rightarea.dart';
import 'Contact.dart';

class Notom extends StatefulWidget {
  @override
  _NotomState createState() => _NotomState();
}

class _NotomState extends State<Notom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            LeftArea(),
            RightArea()
            // Stack(
            //   children: <Widget>[, Contacts()],
            // )
          ],
        ),
      ),
      drawer: VanguardDrawer(),
    );
  }
}
