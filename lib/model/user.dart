class User {
  final String name;
  final int age;
  final List nicknames;

  User(this.name, this.age, this.nicknames);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'],
        nicknames = json['nicknames'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
        'nicknames': nicknames,
      };
}
