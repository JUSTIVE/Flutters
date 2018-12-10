import 'package:flutter/material.dart';
import 'pages/notom/notom.dart';
import 'pages/Homme/Homme.dart';

class VanguardDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.ac_unit
            ),
            title: Text('timer'),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>MyHomePage()
                )
              );
              
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit
            ),
            title: Text('Notom'),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>Notom()
                )
              );
              
            },
          ),
        ],
      ),
    );
  }
}