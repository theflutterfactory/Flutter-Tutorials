import 'package:CWCFlutter/screens/home.dart';
import 'package:CWCFlutter/screens/settings.dart';
import 'package:CWCFlutter/screens/videos.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Curry',
      theme: ThemeData(
          canvasColor: Colors.deepPurple,
          accentColor: Colors.amber,
          backgroundColor: Colors.red,
          brightness: Brightness.dark),
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => Home(),
        'videos': (context) => Videos(),
        'settings': (context) => Settings()
      },
    );
  }
}
