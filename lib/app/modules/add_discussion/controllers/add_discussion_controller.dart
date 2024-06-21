import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/post.dart';
import 'package:x_buddy/app/data/model/user.dart' as Usr;

class AddDiscussionController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  var isLoading = false.obs;
  String? errorMessage;

  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  void onAddDiscussion() async {
    if (formKey.currentState!.validate()) {
      return;
    }

    if (auth.currentUser == null) {
      Get.defaultDialog(
        title: "Error",
        middleText: "Can't add new discussion, please login first!",
        onConfirm: () {
          Get.back();
        },
      );
      return;
    }

    isLoading.value = true;

    try {
      print(auth.currentUser?.uid);
      var name = "Anonim";
      var data = await firestore
          .collection("users")
          .doc(auth.currentUser?.uid)
          .get()
          .then((DocumentSnapshot document) {
        if (document.exists) {
          name = document["name"];
        } else {
          errorMessage = 'Document does not exist on the database';
        }
      });

      var post = Post(
        postId: "",
        title: titleController.text,
        description: descriptionController.text,
        authorUid: auth.currentUser!.uid,
        authorName: name,
        comment: [],
      );
      var docRef = await firestore.collection("posts").add(post.toJson());
      await firestore
          .collection("posts")
          .doc(docRef.id)
          .update({"post_id": docRef.id});
    } catch (e) {
      errorMessage = e.toString();
    }

    Get.defaultDialog(
      title: errorMessage == null ? "Success" : "Error",
      middleText: errorMessage == null
          ? "Success to add discussion"
          : "Failed to add because : $errorMessage",
      onConfirm: () {
        Get.back();
        Get.back();
      },
    );
  }

  String? onTitleValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Title can't be empty";
    }

    return null;
  }

  String? onDescriptionValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Description can't be empty";
    }

    return null;
  }
}
