
import 'dart:math';

class Note{
  final int orderNumber;
  final int line;
  NoteState state = NoteState.ready;
  Note(this.orderNumber,this.line);
}
enum NoteState{
  ready,tapped,missed
}
List<Note> initNotes(){
  var rng = Random();
  List<Note> notes=[];
  int i=0;
  for(;i<100;i++)
    notes.add(Note(i,rng.nextInt(3)));
  for(int j=0;j<4;j++){
    notes.add(Note(i++,-1));
  }  
  return notes;
}