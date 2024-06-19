// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'dart:convert';

Event eventFromJson(String str) => Event.fromJson(json.decode(str));

String eventToJson(Event data) => json.encode(data.toJson());

class Event {
  String title;
  String category;
  String authorUid;
  String authorName;
  String location;
  String date;
  String time;
  int participant;
  String description;

  Event({
    required this.title,
    required this.category,
    required this.authorUid,
    required this.authorName,
    required this.location,
    required this.date,
    required this.time,
    required this.participant,
    required this.description,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        title: json["title"],
        category: json["category"],
        authorUid: json["author_uid"],
        authorName: json["author_name"],
        location: json["location"],
        date: json["date"],
        time: json["time"],
        participant: json["participant"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "category": category,
        "author_uid": authorUid,
        "author_name": authorName,
        "location": location,
        "date": date,
        "time": time,
        "participant": participant,
        "description": description,
      };
}
