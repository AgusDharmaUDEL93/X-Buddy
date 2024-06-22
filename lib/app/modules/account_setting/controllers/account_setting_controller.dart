import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/firebase_humanize_error_code.dart';

class AccountSettingController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  var isLoading = false.obs;
  String? errorMessage;

  final auth = FirebaseAuth.instance;
  final firebase = FirebaseFirestore.instance;

  @override
  void onInit() async {
    super.onInit();

    isLoading.value = true;
    if (auth.currentUser == null) {
      isLoading.value = false;
      Get.defaultDialog(
        title: "Error",
        middleText: "Can't add new discussion, please login first!",
        onConfirm: () {
          Get.back();
          Get.back();
        },
      );
      return;
    }

    emailController.text = auth.currentUser?.email ?? "";
    await firebase
        .collection("users")
        .doc(auth.currentUser?.uid)
        .get()
        .then((DocumentSnapshot document) {
      if (document.exists) {
        nameController.text = document["name"];
      } else {
        errorMessage = 'Document does not exist on the database';
      }
    });
    isLoading.value = false;
  }

  void onUpdateAccount() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    isLoading.value = true;

    try {
      await firebase
          .collection("users")
          .doc(auth.currentUser?.uid)
          .get()
          .then((DocumentSnapshot document) async {
        if (document.exists) {
          if (document["name"] == nameController.text) {
            return;
          }
          await firebase
              .collection("users")
              .doc(auth.currentUser?.uid)
              .update({"name": nameController.text});
        } else {
          errorMessage = 'Document does not exist on the database';
        }
      });

      if (emailController.text.isNotEmpty ||
          emailController.text != auth.currentUser?.email) {
        await auth.currentUser?.verifyBeforeUpdateEmail(emailController.text);
        await auth.signOut();
      }
    } on FirebaseAuthException catch (e) {
      errorMessage =
          firebaseHumanizeErrorCode(e.code) ?? "Unexpected Error Occured";
    } catch (e) {
      errorMessage = e.toString();
    }

    isLoading.value = false;

    Get.defaultDialog(
      title: errorMessage == null ? "Success" : "Error",
      middleText: errorMessage == null
          ? "Success to update your account, if you change your email address please check your email to verify your email and please login again"
          : "Failed to add because : $errorMessage",
      onConfirm: () {
        Get.back();
        Get.back();
      },
    );
  }

  String? onEmailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Email can't be empty";
    }
    if (!GetUtils.isEmail(value)) {
      return "Please input the correct email";
    }
    return null;
  }

  String? onNameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Name can't be empty";
    }
    return null;
  }
}
