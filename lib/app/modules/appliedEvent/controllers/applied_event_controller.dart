import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../data/model/event.dart';

class AppliedEventController extends GetxController {
  //Method untuk mengambil data event yang telah di daftar oleh user dan user itu sudah login
  Stream<List<Event>> getAppliedEvent() {
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      return FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .snapshots()
          .asyncMap((doc) async {
        List<dynamic> followedEvents = doc.data()?['followed_event'];
        List<String> eventIds = followedEvents.cast<String>();

        List<Event> events = [];
        for (String eventId in eventIds) {
          DocumentSnapshot<Map<String, dynamic>> eventSnapshot =
              await FirebaseFirestore.instance
                  .collection('events')
                  .doc(eventId)
                  .get();
          if (eventSnapshot.exists) {
            events.add(Event.fromJson(eventSnapshot.data()!));
          }
        }
        return events;
      });
    } else {
      return const Stream.empty();
    }
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
