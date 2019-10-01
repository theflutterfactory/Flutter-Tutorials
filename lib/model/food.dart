import 'package:cloud_firestore/cloud_firestore.dart';

class Food {
  String id;
  String name;
  String category;
  List<dynamic> subIngredients;

  Food({
    this.id,
    this.name,
    this.category,
    this.subIngredients,
  });

  factory Food.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data;

    return Food(
        id: doc.documentID,
        name: data['name'] ?? '',
        category: data['category'] ?? '',
        subIngredients: data['subIngredients'] ?? []);
  }
}
