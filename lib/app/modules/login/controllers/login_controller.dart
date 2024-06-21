import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
<<<<<<< HEAD
  RxBool isLoading = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Future<User?> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Login", "User not found",
            colorText: Colors.white,
            backgroundColor: const Color.fromARGB(131, 253, 65, 65),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10));
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Login", "Password is wrong",
            colorText: Colors.white,
            backgroundColor: const Color.fromARGB(131, 253, 65, 65),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10));
      }
    }
    return null;
=======
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
      if (e.code == 'user-not-found') {
        errorMessage = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Wrong password provided for that user.';
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
>>>>>>> cfca80d6e996eb2f7c9d7c2fb35988252f87338e
  }
  // //TODO: Implement LoginController

<<<<<<< HEAD
  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
=======
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
>>>>>>> cfca80d6e996eb2f7c9d7c2fb35988252f87338e
}
