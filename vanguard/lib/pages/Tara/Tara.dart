import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vanguard/VanguardDrawer.dart';
import 'TaraProfile.dart';
import 'TaraMain.dart';
import 'TaraMatch.dart';

class Tara extends StatefulWidget {
  @override
  _TaraState createState() => _TaraState();
}

class _TaraState extends State<Tara> with SingleTickerProviderStateMixin {
  List<Tab> mytab = [
    Tab(
      icon: Icon(Icons.person),
    ),
    Tab(icon: Icon(Icons.track_changes)),
    Tab(icon: Icon(Icons.favorite))
  ];
  TabController ttc;

  @override
  void initState() {
    super.initState();
    ttc = TabController(
      vsync: this,
      length: 3,
    );
  }

  @override
  void dispose() {
    ttc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.person,color: Theme.of(context).primaryColor,),
              ),
              Tab(icon:Icon(Icons.fingerprint,color:Theme.of(context).primaryColor)),
              Tab(icon:Icon(Icons.personal_video,color:Theme.of(context).primaryColor)),
            ],
          ),
          drawer: VanguardDrawer(),
          body: TabBarView(
            
            children: <Widget>[
              TaraProfile(),
              TaraMain(),
              TaraMatch(),
            ],
          ),
        ),
      ),
    );
  }
}
