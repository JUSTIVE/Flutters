import 'package:flutter/material.dart';
import 'pages/Homme/Homme.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vanguard',
      theme: new ThemeData(
        primarySwatch: new MaterialColor(
          0xFFFA7268,
          const <int, Color>{
            50:  const Color(0xFFFEEEED), 
            100: const Color(0xFFFED6D2),
            200: const Color(0xFFFDB9B4),
            300: const Color(0xFFFC9C95),
            400: const Color(0xFFFB877F),
            500: const Color(0xFFFA7268),
            600: const Color(0xFFF96A60), 
            700: const Color(0xFFF95F55),
            800: const Color(0xFFF8554B),
            900: const Color(0xFFF6423A),
          },
        ),
        fontFamily: 'SourceCodePro',
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
