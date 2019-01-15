import 'package:flutter/material.dart';

class TaraProfile extends StatefulWidget {
  @override
  TaraProfileState createState() {
    return new TaraProfileState();
  }
}

class TaraProfileState extends State<TaraProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image(
              height: 140,
              width: 140,
              image: AssetImage('res/jeb.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 24),
          Text('Ben,23',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
          Text('순천향대학교'),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                          color: Color(0x88eceff1),
                          height: 65,
                          width: 65,
                          child: IconButton(
                            color: Color(0xffa8aaa9),
                            icon: Icon(Icons.settings),
                            onPressed: () {},
                          ))),
                  SizedBox(
                    height: 4,
                  ),
                  Text('설정')
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Stack(alignment: Alignment.bottomRight, children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                            color: Theme.of(context).primaryColor,
                            height: 65,
                            width: 65,
                            child: Icon(
                              Icons.photo_camera,
                              color: Colors.white,
                            ))),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white,
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '멋진 모습을\n추가해보세요',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                          color: Color(0x88eceff1),
                          height: 65,
                          width: 65,
                          child: IconButton(
                            color: Color(0xffa8aaa9),
                            icon: Icon(Icons.edit),
                            onPressed: () {},
                          ))),
                  SizedBox(
                    height: 4,
                  ),
                  Text('정보 수정')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
