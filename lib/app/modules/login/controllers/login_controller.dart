import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Future<User?> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isPasswordObscure = true.obs;
  var isLoading = false.obs;
  String? errorMessage;

  final auth = FirebaseAuth.instance;

  void onLogin() async {
    try {} on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        await auth.signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } else if (e.code == 'wrong-password') {
        if (e.code == 'user-not-found') {
          errorMessage = 'No user found for that email.';
        } else if (e.code == 'wrong-password') {
          errorMessage = 'Wrong password provided for that user.';
        }
      }
    } catch (e) {
      errorMessage = e.toString();
    }
    isLoading.value = false;
    Get.defaultDialog(
      title: errorMessage == null ? "Succes" : "Error",
      middleText: errorMessage == null
          ? "Success to login on X buddy enjoy"
          : "Failed to login because : $errorMessage",
      onConfirm: () {
        Get.back();
        Get.back();
      },
    );
  }
  // //TODO: Implement LoginController

  void onChangeVisibilitPassword() {
    isPasswordObscure.value = !isPasswordObscure.value;
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
    if (value.length < 8) {
      return "Password can't be less than 8 char";
    }
    return null;
  }
}
    return null;
