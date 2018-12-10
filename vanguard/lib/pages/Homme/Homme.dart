import 'package:flutter/material.dart';
import '../../VanguardDrawer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  int currentValue= 0;
  void somethingMethod(){
    setState(() {
      currentValue+=1;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (builder){
              return SetTimerBottomSheet();
            }
          );
        },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 2,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          ],
        ),
      ),
      
      body: new Center(
        child: new Text('$currentValue'),
      ),
      drawer: VanguardDrawer(),
    );
  }
}

class SetTimerBottomSheet extends StatefulWidget {
  @override
  SetTimerBottomSheetState createState() {
    return new SetTimerBottomSheetState();
  }
}

class SetTimerBottomSheetState extends State<SetTimerBottomSheet> {
  double _value=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Set timer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
            Text(
              "$_value"
            ),

            Slider(
              value: _value,
              min: 0.0,
              max: 10.0,
              activeColor: Theme.of(context).primaryColor,
              onChanged: (double value){
                setState(() {
                  _value=value;                  
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Okay'
                  ),
                  onPressed: (){
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}