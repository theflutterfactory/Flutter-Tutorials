import 'dart:collection';

import 'package:CWCFlutter/api/model/food.dart';
import 'package:flutter/widgets.dart';

class FoodNotifier with ChangeNotifier {
  List<Food> _foodList = [];

  UnmodifiableListView get foodList => UnmodifiableListView(_foodList);

  void setFoodList(List<Food> foodList) {
    _foodList = foodList;
    print('foods added: ' + foodList.length.toString());
    notifyListeners();
  }

  void addFood(Food food) {
    _foodList.add(food);
    notifyListeners();
  }
}
