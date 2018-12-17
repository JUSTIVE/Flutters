import 'package:flutter/material.dart';
import 'package:vanguard/VanguardDrawer.dart';

class Vinta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: VanguardDrawer(),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                        height: 250.0,
                        width: double.infinity,
                        color: Color(0xFFFDD148)),
                    Positioned(
                        bottom: 50.0,
                        right: 100.0,
                        child: Container(
                          height: 400.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200.0),
                              color: Color(0x64FEEE64)),
                        )),
                    Positioned(
                        bottom: 100.0,
                        left: 200.0,
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200.0),
                              color: Color(0x64FEEE64)),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 40),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2.0),
                                  image: DecorationImage(
                                      image: AssetImage('res/prevu.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 130,
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () {},
                                color: Colors.white,
                                iconSize: 30.0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Hello, Justie',
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold)),
                              Text('What do you want to buy?',
                                  style: TextStyle(
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.0),
                        Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(5.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Color(0xFFFDCC62),
                                    size: 30.0,
                                  ),
                                  contentPadding: EdgeInsets.only(left:10.0,top:15),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                    color:Colors.grey
                                  )
                                ),
                              ),
                            )),
                            SizedBox(height: 10.0,)
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
