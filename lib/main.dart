import 'package:CWCFlutter/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF064479)),
        primaryColor: Color(0xFF064479),
        backgroundColor: Color(0xFFb7eeff),
      ),
      home: Home(),
    );
  }
}
