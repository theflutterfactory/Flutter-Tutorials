import 'package:CWCFlutter/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Home(title: 'Coding with Curry'),
    );
  }
}
