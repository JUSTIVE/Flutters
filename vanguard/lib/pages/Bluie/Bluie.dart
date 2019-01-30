import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vanguard/VanguardDrawer.dart';
import 'package:flutter_blue/flutter_blue.dart';

class Bluie extends StatefulWidget {
  @override
  BluieState createState() {
    return new BluieState();
  }
}

class BluieState extends State<Bluie> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  FlutterBlue flutterBlue = FlutterBlue.instance;
  Set<ScanResult> devices = Set<ScanResult>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: VanguardDrawer(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bluetooth_searching),
        onPressed: () {
          setState(() async {
            flutterBlue.scan().listen((scanResult) {
              this.devices.add(scanResult);
              
            });
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Row(
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
      body: ListView(
        children:
            devices.map((device) => Text(device.device.name.toString())).toList(),
      ),
    );
  }
}
