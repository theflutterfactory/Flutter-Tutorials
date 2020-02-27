import 'package:CWCFlutter/events/food_event.dart';
import 'package:CWCFlutter/model/food.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodBloc extends Bloc<FoodEvent, List<Food>> {
  @override
  List<Food> get initialState => List<Food>();

  @override
  Stream<List<Food>> mapEventToState(FoodEvent event) async* {
    switch (event.eventType) {
      case EventType.setList:
        yield event.foodList;
        break;
      case EventType.add:
        List<Food> newState = List.from(state);
        if (event.newFood != null) {
          newState.add(event.newFood);
        }
        yield newState;
        break;
      case EventType.delete:
        List<Food> newState = List.from(state);
        newState.removeAt(event.foodIndex);
        yield newState;
        break;
      case EventType.update:
        List<Food> newState = List.from(state);
        newState[event.foodIndex] = event.newFood;
        yield newState;
        break;
      default:
        throw Exception('Event not found $event');
    }
  }
}
