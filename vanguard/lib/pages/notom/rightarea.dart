import 'package:flutter/material.dart';
import 'rightareacontent/projects.dart';

class RightArea extends StatefulWidget {
  int currentTab;
  final List<MenuWithStyle> menus = [
    MenuWithStyle('projects', 0xFFFFC107),
    MenuWithStyle('publications', 0xFFe25282),
    MenuWithStyle('experiences', 0xFFfa8764),
    MenuWithStyle('skills', 0xFFce76dd),
    MenuWithStyle('activities', 0xFF6fa6ff),
    MenuWithStyle('techies', 0xFFade46e)
  ];
  @override
  _RightAreaState createState() => _RightAreaState(menus);
}

class MenuWithStyle {
  final String menuName;
  final int menuColor;
  MenuWithStyle(this.menuName, this.menuColor);
}

class _RightAreaState extends State<RightArea> {
  int currentTab = 0;
  final List<MenuWithStyle> menus;

  _RightAreaState(this.menus);

  Widget rightAreaContentBuilder(BuildContext context){
    if(currentTab==0){
      return Projects();
    }
    if(currentTab==1){
      return Container(
        color: Color(menus[currentTab].menuColor),
      );
    }
    if(currentTab==2){
      return Container(
        color: Color(menus[currentTab].menuColor),
      );
    }
    if(currentTab==3){
      return Container(
        color: Color(menus[currentTab].menuColor),
      );
    }
    if(currentTab==4){
      return Container(
        color: Color(menus[currentTab].menuColor),
      );
    }
    else{
      return Container(
        color: Color(menus[currentTab].menuColor),
      );
    }


  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFF364069),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menus.length,
                  itemBuilder: (context, index) {
                    return TabItem(menus[index], () {
                      setState(() {
                        widget.currentTab=currentTab = index;
                        // print(widget.currentTab);
                      });
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      menus[currentTab].menuName.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  rightAreaContentBuilder(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatefulWidget {
  final MenuWithStyle menu;
  final Function onTap;

  TabItem(this.menu, this.onTap);

  @override
  _TabItemState createState() => _TabItemState(this.menu, this.onTap);
}

class _TabItemState extends State<TabItem> {
  final MenuWithStyle menu;
  final Function onTap;
  _TabItemState(this.menu, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        margin: EdgeInsets.only(right: 8),
        child: FlatButton(
          child: Column(
            children: <Widget>[
              Text(
                widget.menu.menuName,
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(menu.menuColor),
                  decorationStyle: TextDecorationStyle.double
                ),
              ),
            ],
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}
