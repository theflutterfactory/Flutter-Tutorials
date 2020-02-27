import 'package:CWCFlutter/model/food.dart';

enum EventType { setList, add, delete, update }

class FoodEvent {
  List<Food> foodList;
  Food newFood;
  int foodIndex;
  EventType eventType;

  FoodEvent.setList(List<Food> foods) {
    this.eventType = EventType.setList;
    this.foodList = foods;
  }

  FoodEvent.add(Food food) {
    this.eventType = EventType.add;
    this.newFood = food;
  }

  FoodEvent.delete(int index) {
    this.eventType = EventType.delete;
    this.foodIndex = index;
  }

  FoodEvent.update(int index, Food food) {
    this.eventType = EventType.update;
    this.newFood = food;
    this.foodIndex = index;
  }
}
