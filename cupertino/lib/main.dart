import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(), color: null,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sliderValue=0.5;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Material(  
      child: Center(
        child:Column(      
          children: <Widget>[
            Row(
              children: <Widget>[
                CupertinoButton(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text("버-튼"),
                      ]
                    )
                  ),
                  
                  color: Color.fromARGB(255, 0, 122, 255),
                  onPressed: () {
                    CupertinoAlertDialog(
                    );
                    print("dum");
                  },
                ),
                CupertinoSlider(
              value: sliderValue,
              onChanged:(double newValue){
                setState(() {
                  sliderValue=newValue;}
                );
              }, 
            )
              ],
              
            ),
            
          ],
        ),
      ),
    );
  }
}
