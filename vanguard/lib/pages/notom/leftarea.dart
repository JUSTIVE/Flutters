import 'package:flutter/material.dart';

class Achievements{
  String duration;
  String description;
  Achievements({@required this.duration, @required this.description});
}

class LeftArea extends StatelessWidget {
  final List<Achievements> achievementsList=[
    Achievements(
      duration: "2014-2017",
      description: "B.S in Dept of Computer Software Engineering in Soonchunhyang University."
    ),
    Achievements(
      duration: "2017-current",
      description: "M.S Course in Dept of Computer Science in Soonchunhyang University."
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left:24.0,right:24.0,bottom:24.0,top:32.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom:16),
              child: Row(
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32.0),
                      child: Image(
                        image: AssetImage("res/prevu.png"),
                        height: 64,
                        width: 64,
                        fit: BoxFit.fill,
                      ),
                    ),
                    margin: EdgeInsets.only(right:8),
                  ),
                  Text(
                    'Kim Min Sang',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFF364069),
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: achievementsList.length,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(bottom:10),
                  child: AchievementCard(achievementsList[index])
                );
              },
            ),
            Text(
              'His research interests are in computer graphics, physically-based modeling and simulation, android applications, and deep learning',
              style: TextStyle(
                color: Color(0xFF70768f)
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AchievementCard extends StatefulWidget {
  final Achievements _achievements;
  AchievementCard(this._achievements);

  @override
  _AchievementCardState createState() => _AchievementCardState(_achievements);
}

class _AchievementCardState extends State<AchievementCard> {
  final Achievements _achievements;
  _AchievementCardState(this._achievements);

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget._achievements.duration,
            style: TextStyle(
              color: Color(0xFFc78de5)
            ),
          ),
          Text(
            widget._achievements.description,
            style: TextStyle(
              color: Color(0xff82cf17)
            ),
          ),
        ],
      ),
    );
  }
}