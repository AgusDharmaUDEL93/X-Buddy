// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'dart:convert';

Event eventFromJson(String str) => Event.fromJson(json.decode(str));

String eventToJson(Event data) => json.encode(data.toJson());

class Event {
  String name;
  bool isVerify;
  List<String> event;
  List<String> followedEvent;

  Event({
    required this.name,
    required this.isVerify,
    required this.event,
    required this.followedEvent,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        name: json["name"],
        isVerify: json["isVerify"],
        event: List<String>.from(json["event"].map((x) => x)),
        followedEvent: List<String>.from(json["followed_event"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "isVerify": isVerify,
        "event": List<dynamic>.from(event.map((x) => x)),
        "followed_event": List<dynamic>.from(followedEvent.map((x) => x)),
      };
}
