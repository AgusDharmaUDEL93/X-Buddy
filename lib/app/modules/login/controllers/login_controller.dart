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
  }
  // //TODO: Implement LoginController

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
}
