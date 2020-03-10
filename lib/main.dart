import 'package:CWCFlutter/notifier/food_notifier.dart';
import 'package:CWCFlutter/screens/feed.dart';
import 'package:CWCFlutter/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'notifier/auth_notifier.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => FoodNotifier(),
        ),
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.lightBlue,
      ),
      home: Consumer<AuthNotifier>(
        builder: (context, notifier, child) {
          return notifier.user != null ? Feed() : Login();
        },
      ),
    );
  }
}
