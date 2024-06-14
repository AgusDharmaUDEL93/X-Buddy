import 'package:get/get.dart';

class EventController extends GetxController {
  // Daftar fitur
  final List<Map<String, String>> features = [
    {"name": "Competition", "icon": "competition.svg"},
    {"name": "Seminar", "icon": "seminar.svg"},
    {"name": "Tech Talk", "icon": "tech_talk.svg"},
    {"name": "Workshop", "icon": "workshop.svg"},
  ];

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
