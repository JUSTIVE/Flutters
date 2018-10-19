import 'package:flutter/material.dart';

void main() => runApp(Dazzling());

class Dazzling extends StatefulWidget {  
  @override
  DazzlingStatus createState() => new DazzlingStatus();
}

class DazzlingStatus extends State<Dazzling> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Dazzling that Dazzles',
      theme: ThemeData(
        primaryColor: Color(0xFF344955),
        accentColor: Color(0xFFF9AA33)
      ),
      home: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
  
              });
              
              
              
            },
            
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 8.0,
            shape: CircularNotchedRectangle(),
            color: Color(0xFF344955),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.list),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          body: Container()),
    );
  }
}
