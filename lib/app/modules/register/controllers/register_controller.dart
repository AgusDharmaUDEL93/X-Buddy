import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  var isPasswordObscure = true.obs;
  var isConfirmPasswordObscure = true.obs;
  var isLoading = false.obs;
  String? errorMessage;

  final auth = FirebaseAuth.instance;
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  void onRegister() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    isLoading.value = true;
    try {
      UserCredential result = await auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      users.doc(result.user?.uid).set({
        "event": [],
        "isVerify": false,
        "name": nameController.text,
      }).onError((error, stackTrace) {
        errorMessage = error.toString();
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        errorMessage = "The password provided is too weak";
      } else if (e.code == 'email-already-in-use') {
        errorMessage = "The account already exists for that email.";
      }
    } catch (e) {
      errorMessage = e.toString();
    }
    isLoading.value = false;

    Get.defaultDialog(
      title: errorMessage == null ? "Succes" : "Error",
      middleText: errorMessage == null
          ? "Success to register on X buddy please login to continue"
          : "Failed to register because : $errorMessage",
      onConfirm: () {
        Get.back();
        Get.back();
      },
    );
  }

  String? onEmailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }
    if (!GetUtils.isEmail(value)) {
      return "Please input the correct email";
    }
    return null;
  }

  String? onPasswordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }
    if (value != confirmPasswordController.text) {
      return "Password doesn't match";
    }
    if (value.length < 8) {
      return "Password can't be less than 8 char";
    }
    return null;
  }

  String? onConfirmPasswordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }
    if (value != passwordController.text) {
      return "Password doesn't match";
    }
    if (value.length < 8) {
      return "Password can't be less than 8 char";
    }
    return null;
  }

  String? onNameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Name can't be empty";
    }
    return null;
  }

  void onChangeVisibilitPassword() {
    isPasswordObscure.value = !isPasswordObscure.value;
  }

  void onChangeVisibilitConfirmPassword() {
    isConfirmPasswordObscure.value = !isConfirmPasswordObscure.value;
  }
}
