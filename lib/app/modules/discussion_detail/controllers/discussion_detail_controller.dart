import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/post.dart';

class DiscussionDetailController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final commentController = TextEditingController();

  var isLoading = false.obs;
  String? errorMessage;

  late String postId;

  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    isLoading.value = true;

    postId = Get.parameters["id"].toString();

    isLoading.value = false;
  }

  Stream<Post> getDiscussionDetail() {
    return firestore
        .collection('posts')
        .doc(postId)
        .snapshots()
        .map((snapshot) => Post.fromJson(snapshot.data()!));
  }

  String? onCommentValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Comment is Empty";
    }
    return null;
  }

  void onSubmitComment() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    if (auth.currentUser == null) {
      Get.defaultDialog(
        title: "Error",
        middleText: "Can't comment in this discussion, please login first!",
        onConfirm: () {
          Get.back();
        },
      );
      return;
    }

    isLoading.value = true;
    try {
      print("here");
      var name = "Anonim";
      var data = await firestore
          .collection("users")
          .doc(auth.currentUser?.uid)
          .get()
          .then((DocumentSnapshot document) {
        if (document.exists) {
          name = document["name"];
          print(name);
        } else {
          errorMessage = 'Document does not exist on the database';
        }
      });

      firestore.collection('posts').doc(postId).update({
        "comment": FieldValue.arrayUnion([
          Comment(
            authorUid: auth.currentUser?.uid ?? "",
            authorName: name,
            comment: commentController.text,
          ).toJson()
        ])
      });
      commentController.clear();
    } catch (e) {
      errorMessage = e.toString();
    }
    isLoading.value = false;
  }
}
