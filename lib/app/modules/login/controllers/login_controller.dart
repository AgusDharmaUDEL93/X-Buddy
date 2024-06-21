import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/utils/firebase_humanize_error_code.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isPasswordObscure = true.obs;
  var isLoading = false.obs;
  String? errorMessage;

  final auth = FirebaseAuth.instance;

  void onLogin() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      errorMessage =
          firebaseHumanizeErrorCode(e.code) ?? "Unexpected Error Occured";
    } catch (e) {
      errorMessage = e.toString();
    }
    isLoading.value = false;
    Get.defaultDialog(
      title: errorMessage == null ? "Succes" : "Error",
      middleText: errorMessage == null
          ? "Success to login on X buddy enjoy"
          : "$errorMessage",
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
      return "Email can't be empty";
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
