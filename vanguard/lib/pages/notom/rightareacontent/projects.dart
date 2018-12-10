import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

@JsonSerializable()
class Project {
  String link;
  String name;
  String description;
  List<String> language;
  Project(this.link, this.name, this.description, this.language);
  // factory Project.fromJson(Map<String,dynamic> json)=> _$ProjectFromJson(json);
}

class Projects extends StatefulWidget {
  int currentProject = 0;
  @override
  _ProjectsState createState() => _ProjectsState(currentProject);
}

class _ProjectsState extends State<Projects> {
  int currentProject = 0;
  // var jsonData;
  _ProjectsState(this.currentProject) {
    // this.jsonData = json.decode(DefaultAssetBundle.of(context)
    //     .loadString("../../../res/project.json")
    //     .toString());
    // print(jsonData);
  }
  // _ProjectsState(this.currentProject);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ListView.builder(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                // color: Colors.red,
                child: ProjectListItem("Position Based Dynamics", ["Shaderlab","CSharp"]),
              )
            ],
          ),
          Container(
            color: Colors.blue,
            child: Text('maincontent')
          )
        ],
        // )
      ),
    );
  }
}

class ProjectListItem extends StatelessWidget {
  final String name;
  final List<String> language;
  ProjectListItem(this.name, this.language);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF769ecd)
            ),
          ),
          ListView.builder(
            
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: language.length,
            itemBuilder: (context,index){
              return Text(
                language[index],
                style: TextStyle(
                  color: Color(0xFFfcd970),
                  fontSize: 12
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
