import 'package:flutter/material.dart';


class InkwellFlatButton extends StatelessWidget{
  
  final String text;
  final VoidCallback onPressed;
  InkwellFlatButton({
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context){
    return new FlatButton(
      child: InkWell(
        child:new Text(text,)
      ), onPressed: onPressed,
    );
  }

}