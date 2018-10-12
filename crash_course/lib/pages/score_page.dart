import 'package:flutter/material.dart';
import 'landing_page.dart';
class ScorePage extends StatelessWidget{

  final int score;
  final int totalQuestion;

  ScorePage(this.score,this.totalQuestion);

  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.black,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Your Score: ",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold
            ),
          ),
          new Text(
            score.toString()+" / "+totalQuestion.toString(),
            style: new TextStyle(
              color: Colors.white,
              fontSize: 80.0,
              fontWeight: FontWeight.bold
            ),
          ),
          new IconButton(
            icon: new Icon(Icons.arrow_right),
            color: Colors.white,
            iconSize: 50.0,
            onPressed:()=>Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context)=>new LandingPage()),(Route route)=>route==null),
          ),
        ],
      )
    );
  }

}

