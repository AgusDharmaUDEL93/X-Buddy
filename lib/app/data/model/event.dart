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
  String location;
  String date;
  String time;
  int participant;
  String description;
  String imageUrl;
  String authorName;

  Event({
    required this.title,
    required this.category,
    required this.authorUid,
    required this.location,
    required this.date,
    required this.time,
    required this.participant,
    required this.description,
    required this.imageUrl,
    required this.authorName,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        title: json["title"] ?? "",
        category: json["category"] ?? "",
        authorUid: json["author_uid"] ?? "",
        location: json["location"] ?? "",
        date: json["date"] ?? "",
        time: json["time"] ?? "",
        participant: json["participant"] ?? 0,
        description: json["description"] ?? "",
        imageUrl: json["image_url"] ?? "",
        authorName: json["author_name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "category": category,
        "author_uid": authorUid,
        "location": location,
        "date": date,
        "time": time,
        "participant": participant,
        "description": description,
        "image_url": imageUrl,
        "author_name": authorName,
      };
}
