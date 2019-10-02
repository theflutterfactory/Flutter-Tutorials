import 'package:flutter/material.dart';
import 'curry_form_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Coding with Curry',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CurryFormScreen());
  }
}
