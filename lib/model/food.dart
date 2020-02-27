class Food {
  int id;
  String name;
  String calories;
  bool isVegan;

  Food({this.id, this.name, this.calories, this.isVegan});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};

    //TODO: Map database column names from field names

    return map;
  }

  Food.fromMap(Map<String, dynamic> map) {
    //TODO: Map fields from database column names
  }
}
