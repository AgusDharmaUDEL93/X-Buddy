import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/event.dart';

class EventController extends GetxController {
  // Daftar fitur
  final List<Map<String, String>> features = [
    {"name": "Competition", "icon": "competition.svg"},
    {"name": "Seminar", "icon": "seminar.svg"},
    {"name": "Tech Talk", "icon": "tech_talk.svg"},
    {"name": "Workshop", "icon": "workshop.svg"},
  ];

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  var isLoading = false.obs;

  Stream<List<Event>> getPopularEvent() {
    return firestore
        .collection('events')
        .orderBy("participant")
        .limit(5)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) {
              var event = Event.fromJson(doc.data());
              print(event);
              return Event.fromJson(doc.data());
            }).toList());
  }

  Stream<List<Event>> getEvent() {
    return firestore.collection('events').limit(5).snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Event.fromJson(doc.data())).toList());
  }

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
