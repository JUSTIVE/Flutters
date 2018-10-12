import 'package:flutter/material.dart';
import './ui/fancy_button.dart';
void main() => runApp(new Mainapp());

class Mainapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
       title: 'Flutter Demo',
       theme: new ThemeData(
         primaryColor: Colors.blue,
       ),
       home: new MainPage()
    );
  }
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Soy Hola"),
      ),
      body: _buildCardList(context),
      floatingActionButton: FancyButton(
        onPressed:()=>print("lala"),
      ),
    );
  }

  Widget _buildCardList(BuildContext context){
    return new Center(
      child:ListView(
        children: <Widget>[
          Card(
            child:Column(children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text("somthing what Text"),
                subtitle: Text("something what subText"),
              ),
              ButtonTheme.bar(
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: InkWell(
                        child: Text(
                          "liberal",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ), 
                      onPressed: () {print("liberal");},
                    ),
                    FlatButton(
                      child: InkWell(
                        child: Text("democracy")
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],),
          ),
        ],
      ),
    );
  }

}
