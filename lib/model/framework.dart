class Framework {
  String name;
  String language;
  String objectId;
  String imageUrl;

  Framework({this.name, this.language});

  Framework.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    language = json['language'];
    objectId = json['objectId'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'language': language,
      };
}
