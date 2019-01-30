import 'package:flutter/material.dart';
import 'pages/notom/notom.dart';
import 'pages/Homme/Homme.dart';
import 'pages/Vinta/vinta.dart';
import 'pages/Tara/Tara.dart';
import 'pages/Dola/Dola.dart';
import 'pages/Bluie/Bluie.dart';

class VanguardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          DrawerItem(MyHomePage()),
          DrawerItem(Notom()),
          DrawerItem(Vinta()),
          DrawerItem(Tara()),
          DrawerItem(Dola()),
          DrawerItem(Bluie())
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final Widget target;
  DrawerItem(this.target);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text(target.runtimeType.toString()),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.target));
      },
    );
  }
}
