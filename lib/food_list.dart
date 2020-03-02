import 'package:CWCFlutter/db/database_provider.dart';
import 'package:CWCFlutter/events/delete_food.dart';
import 'package:CWCFlutter/events/set_foods.dart';
import 'package:CWCFlutter/food_form.dart';
import 'package:CWCFlutter/model/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/food_bloc.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key key}) : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  void initState() {
    super.initState();
    DatabaseProvider.db.getFoods().then(
      (foodList) {
        BlocProvider.of<FoodBloc>(context).add(SetFoods(foodList));
      },
    );
  }

  showFoodDialog(BuildContext context, Food food, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(food.name),
        content: Text("ID ${food.id}"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => FoodForm(food: food, foodIndex: index),
              ),
            ),
            child: Text("Update"),
          ),
          FlatButton(
            onPressed: () => DatabaseProvider.db.delete(food.id).then((_) {
              BlocProvider.of<FoodBloc>(context).add(
                DeleteFood(index),
              );
              Navigator.pop(context);
            }),
            child: Text("Delete"),
          ),
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Building entire food list scaffold");
    return Scaffold(
      appBar: AppBar(title: Text("FoodList")),
      body: Container(
        child: BlocConsumer<FoodBloc, List<Food>>(
          builder: (context, foodList) {
            return ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                print("foodList: $foodList");

                Food food = foodList[index];
                return ListTile(
                    title: Text(food.name, style: TextStyle(fontSize: 30)),
                    subtitle: Text(
                      "Calories: ${food.calories}\nVegan: ${food.isVegan}",
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () => showFoodDialog(context, food, index));
              },
              itemCount: foodList.length,
              separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.black),
            );
          },
          listener: (BuildContext context, foodList) {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => FoodForm()),
        ),
      ),
    );
  }
}
