import 'package:flutter/material.dart';
import 'package:vanguard/VanguardDrawer.dart';
import 'package:statusbar/statusbar.dart';

class Tara extends StatefulWidget {
  @override
  _TaraState createState() => _TaraState();
}

class _TaraState extends State<Tara> {
  List<Tab> mytab = <Tab>[
    Tab(
      icon: Icon(
        Icons.account_circle,
        color: Colors.grey[150],
      ),
      text: 'profile',
    ),
    Tab(
      icon: Icon(Icons.favorite, color: Colors.grey[150]),
      text: 'home',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytab.length,
      child: Scaffold(
        drawer: VanguardDrawer(),
        backgroundColor: Color(0xFFFAFAFA),
        body: TabBarView(
          children: mytab.map((Tab t) {
            return Center(
                          child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  t.icon,
                  Text(t.text)
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
