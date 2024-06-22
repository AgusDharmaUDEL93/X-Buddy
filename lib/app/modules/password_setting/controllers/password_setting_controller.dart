import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PasswordSettingController extends GetxController {
  final keys = GlobalKey<FormState>();
  final oldPassword = TextEditingController();
  final newPassword = TextEditingController();
  final confirmPassword = TextEditingController();

  var isObscure = true.obs;
  var isLoading = false.obs;
  String? message;

  final user = FirebaseAuth.instance.currentUser;

  onChangePassword() async {
    if (keys.currentState!.validate()) {
      if (newPassword.text != confirmPassword.text) {
        message = "Password not match";
        return;
      }
      message = "Password Updated";
      // try {
      //   // await user!.updatePassword(newPassword.text);
      // } catch (e) {
      //   message = e.toString();
      // }
    } else {
      return null;
    }
    // await user!.updatePassword(newPassword.text);
  }
}
