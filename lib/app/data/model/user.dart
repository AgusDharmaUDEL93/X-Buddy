// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  String name;
  bool isVerify;
  List<String> event;

  User({
    required this.name,
    this.isVerify = false,
    required this.event,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        isVerify: json["isVerify"],
        event: List<String>.from(json["event"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "isVerify": isVerify,
        "event": List<dynamic>.from(event.map((x) => x)),
      };
}
