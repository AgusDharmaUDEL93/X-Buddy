// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'event.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  String name;
  bool isVerify;
  List<Event> yourEvent;
  List<Event> followedEvent;

  User({
    required this.name,
    required this.isVerify,
    required this.yourEvent,
    required this.followedEvent,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        isVerify: json["isVerify"],
        yourEvent:
            List<Event>.from(json["your_event"].map((x) => Event.fromJson(x))),
        followedEvent: List<Event>.from(
            json["followed_event"].map((x) => Event.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "isVerify": isVerify,
        "your_event": List<dynamic>.from(yourEvent.map((x) => x.toJson())),
        "followed_event":
            List<dynamic>.from(followedEvent.map((x) => x.toJson())),
      };
}
