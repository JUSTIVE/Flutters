import 'package:flutter/material.dart';
import 'theme.dart';

void main() => runApp(Dazzling());

class Dazzling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dazzling that Dazzles',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: DazzlingPage(),
    );
  }
}

class DazzlingPage extends StatefulWidget {
  @override
  DazzlingStatus createState() => new DazzlingStatus();
}

class DazzlingStatus extends State<DazzlingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: const Color(0xFFDDDDDD),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: const Color(0xFFDDDDDD),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          //seekbar
          Expanded(
            child: Center(
              child: Container(
                width: 125.0,
                height: 125.0,
                child: Image.network(src),
              ),
            ),
          ),
          //visualizer
          Container(
            width: double.infinity,
            height: 125.0,
          ),
          //song title, artist,etc
          Container(
            color: lightAccentColor,
            child: Padding(
              padding: const EdgeInsets.only(top:40.0,bottom: 50.0),
                child: Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '', children: [
                        TextSpan(
                          text: 'Song title\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 4.0,
                            height: 1.5,
                          )
                        ),
                        TextSpan(
                          text: 'Artist Name\n',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.75),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3.0,
                            height: 1.5,
                          )
                        ),
                  ])),
                  Padding(
                    padding: const EdgeInsets.only(top:40.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(child:Container()),
                        IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.skip_previous,size: 35.0,),
                          onPressed: () {},
                        ),
                        Expanded(child:Container()),
                        
                        RawMaterialButton(
                          shape: CircleBorder(),
                          fillColor: Colors.white,
                          splashColor: lightAccentColor,
                          highlightColor: lightAccentColor.withOpacity(0.5),
                          elevation: 10.0,
                          highlightElevation: 5.0,
                          onPressed: (){},
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.play_arrow,
                              color: darkAccentColor,
                              size: 35.0
                            ),
                          ),
                        ),

                        Expanded(child:Container()),
                        IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.skip_next,size: 35.0),
                          onPressed: () {},
                        ),
                        Expanded(child:Container()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
