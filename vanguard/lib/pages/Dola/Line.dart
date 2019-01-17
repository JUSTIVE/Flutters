import 'package:flutter/material.dart';
import 'Tile.dart';
import 'Note.dart';

class Line extends AnimatedWidget{
  final int lineNumber;
  final List<Note> currentNotes;

  const Line({Key key,this.currentNotes,this.lineNumber,Animation<double> animation}):super(key:key,listenable:animation);

  @override
  Widget build(BuildContext context){
    Animation<double> animation=super.listenable;
    double height = MediaQuery.of(context).size.height;
    double tileHeight = height/4;

    List<Note> thisLineNotes = 
      currentNotes.where((note)=>note.line==lineNumber).toList();
    
    List<Widget> tiles = thisLineNotes.map((note){
      int index = currentNotes.indexOf(note);
      double offset = (3-index+animation.value)*tileHeight;
      return Transform.translate(
        offset: Offset(0,offset),
        child: Tile(
          height:tileHeight,
          state:note.state
        ),
      );
    }).toList();
    return SizedBox.expand(
      child:Stack(
        children:tiles,
      )
    );
  }

}