import 'package:cwc_flutter/notifiers/food_notifier.dart';
import 'package:cwc_flutter/notifiers/user_notifier.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context) => FoodNotifier()),
          ChangeNotifierProvider(builder: (context) => UserNotifier('Coding with Curry'))
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
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}
