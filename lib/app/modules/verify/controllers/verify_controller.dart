import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class VerifyController extends GetxController {
  //TODO: Implement VerifyController
  final name = TextEditingController();
  final id = TextEditingController();
  final keys = GlobalKey<FormState>();

  checkInput() {
    if (keys.currentState!.validate()) {
      print("Data dikirim ke DB");
      // proses update
      // update selesai masuk ke  halaman lain
      Get.toNamed(Routes.KTP_VERIFY);
      return;
    }

    print("Data Tidak boleh Kosong");
  }
}
