import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class VerifyController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final nikController = TextEditingController();

  void onVerify() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    Get.toNamed(Routes.KTP_VERIFY);
  }

  String? onNameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Name can't be empty";
    }
    return null;
  }

  String? onNikValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Name can't be empty";
    }

    if (value.length < 16) {
      return "Please enter the correct NIK";
    }
    return null;
  }
}
