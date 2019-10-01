import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home.dart';
import 'notifiers/food_notifier.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context) => FoodNotifier()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
