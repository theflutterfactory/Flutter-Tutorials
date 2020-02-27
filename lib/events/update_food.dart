import 'package:CWCFlutter/model/food.dart';

import 'food_event.dart';

class UpdateFood extends FoodEvent {
  Food newFood;
  int foodIndex;

  UpdateFood(int index, Food food) {
    newFood = food;
    foodIndex = index;
  }
}
