// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  String postId;
  String title;
  String description;
  String authorUid;
  String authorName;
  List<Comment> comment;

  Post({
    required this.postId,
    required this.title,
    required this.description,
    required this.authorUid,
    required this.authorName,
    required this.comment,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        postId: json["post_id"],
        title: json["title"],
        description: json["description"],
        authorUid: json["author_uid"],
        authorName: json["author_name"],
        comment:
            List<Comment>.from(json["comment"].map((x) => Comment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "post_id": postId,
        "title": title,
        "description": description,
        "author_uid": authorUid,
        "author_name": authorName,
        "comment": List<dynamic>.from(comment.map((x) => x.toJson())),
      };
}

class Comment {
  String authorUid;
  String authorName;
  String comment;

  Comment({
    required this.authorUid,
    required this.authorName,
    required this.comment,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        authorUid: json["author_uid"],
        authorName: json["author_name"],
        comment: json["comment"],
      );

  Map<String, dynamic> toJson() => {
        "author_uid": authorUid,
        "author_name": authorName,
        "comment": comment,
      };
}
