// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  String title;
  String description;
  String authorUid;
  List<Comment> comment;

  Post({
    required this.title,
    required this.description,
    required this.authorUid,
    required this.comment,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        title: json["title"],
        description: json["description"],
        authorUid: json["author_uid"],
        comment:
            List<Comment>.from(json["comment"].map((x) => Comment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "author_uid": authorUid,
        "comment": List<dynamic>.from(comment.map((x) => x.toJson())),
      };
}

class Comment {
  String authorUid;
  String comment;

  Comment({
    required this.authorUid,
    required this.comment,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        authorUid: json["author_uid"],
        comment: json["comment"],
      );

  Map<String, dynamic> toJson() => {
        "author_uid": authorUid,
        "comment": comment,
      };
}
