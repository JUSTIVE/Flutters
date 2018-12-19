import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vanguard/VanguardDrawer.dart';
import 'TaraProfile.dart';

class TaraTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([onChanged]) {
    return TaraTabPainter(this, onChanged);
  }
}

class TaraTabPainter extends BoxPainter {
  final TaraTabIndicator decoration;

  TaraTabPainter(this.decoration, VoidCallback onchanged)
      : assert(decoration != null),
        super(onchanged);
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    final Rect rect = /*offset& configuration.size;*/ Offset(
            (offset.dx + configuration.size.width / 2 - 15),
            (configuration.size.height / 2 - 16)) &
        Size(30, 30);
    final Paint paint = Paint();
    paint.color = Color(0xFFFA7268);
    paint.style = PaintingStyle.fill;
    
    canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(15.0)), paint);
    
  }
}

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
      child: Scaffold(
        drawer: VanguardDrawer(),
        appBar: TabBar(
          indicator: TaraTabIndicator(),
          controller: ttc,
          tabs: mytab,
        ),
        body: TabBarView(
          controller: ttc,
          children: <Widget>[
            TaraProfile(),
            Column(),
            Column(),
          ],
        ),
      ),
    );
    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     drawer: VanguardDrawer(),
    //     backgroundColor: Color(0xFFFAFAFA),
    //     appBar: AppBar(
    //       elevation: 0,
    //       backgroundColor: Color(0xFFFAFAFA),
    //       bottom: TabBar(
    //         labelColor: Theme.of(context).primaryColor,
    //         tabs: [
    //           Tab(
    //               icon: Icon(
    //             Icons.person,
    //             color: Colors.grey,
    //           )),
    //           Tab(
    //             icon: Icon(Icons.trip_origin, color: Colors.grey),
    //           ),
    //           Tab(
    //               icon: Icon(
    //             Icons.favorite,
    //             color: Colors.grey,
    //           ))
    //         ],
    //       ),
    //     ),
    //     body: TabBarView(
    //       children: <Widget>[
    //         Column(
    //           children: <Widget>[],
    //         ),
    //         Column(
    //           children: <Widget>[],
    //         ),
    //         Column(
    //           children: <Widget>[],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
