import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  var isLoading = false.obs;
  String? errorMessage;

  final auth = FirebaseAuth.instance;

  void onResetPassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    isLoading.value = true;
    try {
      await auth.sendPasswordResetEmail(email: emailController.text);
    } catch (e) {
      errorMessage = e.toString();
    }
    isLoading.value = false;
    Get.defaultDialog(
      title: errorMessage == null ? "Succes" : "Error",
      middleText: errorMessage == null
          ? "Reset password has be confirm please check your email"
          : "Failed to reset because : $errorMessage",
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
}
