import 'package:CWCFlutter/food_list.dart';
import 'package:flutter/material.dart';

class FoodListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cheetah Coding')),
      body: FoodList(),
    );
  }
}
