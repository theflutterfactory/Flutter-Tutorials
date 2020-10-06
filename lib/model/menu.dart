import 'package:CWCFlutter/model/food.dart';

class Menu {
  String id;
  String color;
  int numOfPages;
  List<Food> foodList;

  Menu({
    this.id,
    this.color,
    this.numOfPages,
    this.foodList,
  });
}
