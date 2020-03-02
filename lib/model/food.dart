import 'package:CWCFlutter/db/database_provider.dart';

class Food {
  int id;
  String name;
  String calories;
  bool isVegan;

  Food({this.id, this.name, this.calories, this.isVegan});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_NAME: name,
      DatabaseProvider.COLUMN_CALORIES: calories,
      DatabaseProvider.COLUMN_VEGAN: isVegan ? 1 : 0
    };

    if (id != null) {
      map[DatabaseProvider.COLUMN_ID] = id;
    }

    return map;
  }

  Food.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseProvider.COLUMN_ID];
    name = map[DatabaseProvider.COLUMN_NAME];
    calories = map[DatabaseProvider.COLUMN_CALORIES];
    isVegan = map[DatabaseProvider.COLUMN_VEGAN] == 1;
  }
}
