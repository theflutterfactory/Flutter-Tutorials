import 'package:CWCFlutter/food_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/food_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodBloc>(
      create: (context) => FoodBloc(),
      child: MaterialApp(
        title: 'Sqflite Tutorial',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: FoodList(),
      ),
    );
  }
}
