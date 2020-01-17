import 'package:CWCFlutter/bloc/food_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events/food_event.dart';
import 'model/food.dart';

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: BlocConsumer<FoodBloc, List<Food>>(
          buildWhen: (List<Food> previous, List<Food> current) {
            return true;
          },
          listenWhen: (List<Food> previous, List<Food> current) {
            if (current.length > previous.length) {
              return true;
            }

            return false;
          },
          builder: (context, foodList) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(foodList[index].name),
                    onTap: () => BlocProvider.of<FoodBloc>(context).add(
                      FoodEvent.delete(index),
                    ),
                  ),
                );
              },
            );
          },
          listener: (BuildContext context, foodList) {
            Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Added!')),
            );
          },
        ));
  }
}
