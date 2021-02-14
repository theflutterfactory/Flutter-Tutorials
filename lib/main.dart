import 'package:CWCFlutter/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF32CD32)),
        primaryColor: Color(0xFF32CD32),
        backgroundColor: Color(0xFFDCDCDC),
      ),
      home: Home(),
    );
  }
}
