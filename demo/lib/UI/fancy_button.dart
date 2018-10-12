import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FancyButton extends StatelessWidget{
  final GestureTapCallback onPressed;
  FancyButton({@required this.onPressed});
  
  @override
  Widget build(BuildContext context){
    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.yellowAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 15.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.explore,
              color: Colors.yellowAccent,
            ),
            const SizedBox(width: 8.0,),
            const Text(
              "PURCHASE",
              style: const TextStyle(
                color: Colors.white
              ),
            ),
          ],
         
        ),
      ), 
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
  
}