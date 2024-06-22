import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/modules/profile/controllers/profile_controller.dart';

class AccountSettingController extends GetxController {
  final name = TextEditingController();
  final email = TextEditingController();
  final auth = FirebaseFirestore.instance;
  final dataEmail = FirebaseAuth.instance;

  String? message;
  var isLoading = false.obs;
  final profileController = Get.put(ProfileController());

  @override
  void onInit() {
    getDataAccount();
    super.onInit();
  }

  checkInput() async {
    if (name.text.isNotEmpty || email.text.isNotEmpty) {
      isLoading.value = true;
      try {
        await auth
            .collection('users')
            .doc('ttv1jJfKlSTBkkN2zvYCWhV5XcK2')
            .update({'name': name.text});
        message = "Account Updated";
        isLoading.value = false;
        profileController.getDataProfile();
      } catch (e) {
        message = "Error = ${e.toString()}";
      }
    } else {
      message = "There's nothing update";
    }
  }

  getDataAccount() async {
    isLoading.value = true;
    try {
      DocumentReference docRef =
          auth.collection("users").doc("ttv1jJfKlSTBkkN2zvYCWhV5XcK2");
      await docRef.get().then((DocumentSnapshot snapshot) {
        name.text = snapshot['name'];
      });
      var data = dataEmail.currentUser;
      email.text = data!.email!;
    } catch (e) {
      message = e.toString();
    }
    isLoading.value = false;
  }

  updateData(String name) async {
    isLoading.value = true;
    try {
      await auth
          .collection('users')
          .doc('ttv1jJfKlSTBkkN2zvYCWhV5XcK2')
          .update({'name': name});
    } catch (e) {
      print(e.toString());
    }
    isLoading.value = false;
    message = "Update Success";
    profileController.getDataProfile();
  }
}
