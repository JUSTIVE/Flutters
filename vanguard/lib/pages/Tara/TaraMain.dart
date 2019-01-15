import 'package:flutter/material.dart';

class TaraMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TaraMainState();
  }
}

class TaraMainState extends State<TaraMain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Draggable(
                    child: Material(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(12),
                      elevation: 12,
                      child: Image(
                        height: 550,
                        image: AssetImage('res/jeb.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    feedback: Material(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(12),
                      elevation: 12,
                      child: Image(
                        height: 500,
                        image: AssetImage('res/jeb.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TaraMainActionButton(
                iconButton: IconButton(
                  color: Colors.lime,
              icon: Icon(Icons.undo),
              onPressed: () {},
            )),
            TaraMainActionButton(
              iconButton: IconButton(
                iconSize: 40,
                color: Theme.of(context).primaryColor,
                icon: Icon(Icons.star),
                onPressed: () {},

              ),
            ),
            TaraMainActionButton(
              iconButton: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {},
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class TaraMainActionButton extends StatelessWidget {
  const TaraMainActionButton({Key key, this.iconButton}) : super(key: key);
  final IconButton iconButton;
  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      borderRadius: BorderRadius.circular(50),
      child: iconButton,
    );
  }
}
