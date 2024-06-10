import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
    var pages = [Routes.EVENT, Routes.DISCUSSION, Routes.PROFILE];
    Get.toNamed(pages[tabIndex.value], id: 1);
  }
}
