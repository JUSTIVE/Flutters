import 'package:flutter/material.dart';
import 'Note.dart';
import 'Line.dart';

class Dola extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DolaState();
  }
}

class DolaState extends State<Dola> with SingleTickerProviderStateMixin {
  List<Note> notes = initNotes();
  int currentNoteIndex = 0;
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (currentNoteIndex == notes.length - 4) {
          //song finished
        } else {
          setState(() => ++currentNoteIndex);
          animationController.forward(from: 0);
        }
      }
    });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.blueGrey[200],
        child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            Row(
              children: <Widget>[
                drawline(0),
                LineDivider(),
                drawline(1),
                LineDivider(),
                drawline(2),
                LineDivider(),
                drawline(3),
              ],
            )
          ],
        ),
      ),
    );
  }

  drawline(int lineNumber) {
    return Expanded(
      child: Line(
        lineNumber: lineNumber,
        currentNotes: notes.sublist(currentNoteIndex, currentNoteIndex+4),
        animation: animationController,
      ),
    );
  }
}

class LineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: double.infinity, width: 1, color: Colors.white);
  }
}
