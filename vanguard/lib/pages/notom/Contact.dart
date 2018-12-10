import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
        child: Container(
          color: Color(0xFF232943),
          width: MediaQuery.of(context).size.width * 0.6,
          height: 48,
        ),
      ),
      
    );
  }
}
