import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/firebase_humanize_error_code.dart';

class PasswordSettingController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final newConfirmPasswordController = TextEditingController();

  var isOldPasswordObscure = true.obs;
  var isNewPasswordObscure = true.obs;
  var isNewConfirmPasswordObscure = true.obs;

  var isLoading = false.obs;
  String? errorMessage;

  final auth = FirebaseAuth.instance;
  final firebase = FirebaseFirestore.instance;

  void onChangePassword() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    isLoading.value = true;
    try {
      await auth.currentUser?.reauthenticateWithCredential(
          EmailAuthProvider.credential(
              email: auth.currentUser?.email ?? "",
              password: oldPasswordController.text));
      await auth.currentUser?.updatePassword(newPasswordController.text);
      await auth.signOut();
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
          ? "Success to update your password, please login again"
          : "Failed to add because : $errorMessage",
      onConfirm: () {
        Get.back();
        Get.back();
      },
    );
  }

  String? onOldPasswordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }

    if (value.length < 8) {
      return "Password can't be less than 8 char";
    }
    return null;
  }

  String? onNewPasswordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }
    if (value != newConfirmPasswordController.text) {
      return "Password doesn't match";
    }
    if (value.length < 8) {
      return "Password can't be less than 8 char";
    }
    return null;
  }

  String? onNewConfirmPasswordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Confirm Password can't be empty";
    }
    if (value != newPasswordController.text) {
      return "Password doesn't match";
    }
    if (value.length < 8) {
      return "Password can't be less than 8 char";
    }
    return null;
  }

  void onChangeVisibilitOldPassword() {
    isOldPasswordObscure.value = !isOldPasswordObscure.value;
  }

  void onChangeVisibilitNewPassword() {
    isNewPasswordObscure.value = !isNewPasswordObscure.value;
  }

  void onChangeVisibilitNewConfirmPassword() {
    isNewConfirmPasswordObscure.value = !isNewConfirmPasswordObscure.value;
  }
}
