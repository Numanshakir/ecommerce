import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String name;
  String email;
  int age;

  UserModel({
    required this.name,
    required this.age,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"] ?? "",
        age: json["age"] ?? 0,
        email: json["email"] ?? "",
      );

  static List<UserModel> fromJsonToList(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> jsonList) {
    return jsonList.map((item) => UserModel.fromJson(item.data())).toList();
  }
}
