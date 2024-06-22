import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../data/model/event.dart';
import '../../../data/model/user.dart' as Usr;
import '../../../routes/app_pages.dart';
import '../../../utils/firebase_humanize_error_code.dart';

class EventDetailController extends GetxController {
  var isLoading = false.obs;
  String? errorMessage;

  late String eventId;
  var isJoined = false.obs;

  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();

    isLoading.value = true;

    eventId = Get.parameters["id"].toString();
    checkIsJoined();

    isLoading.value = false;
  }

  Stream<Event> getEventDetail() {
    return firestore
        .collection('events')
        .doc(eventId)
        .snapshots()
        .map((snapshot) => Event.fromJson(snapshot.data()!));
  }

  void onAddEvent() async {
    if (auth.currentUser == null) {
      Get.defaultDialog(
        title: "Error",
        middleText: "Can't join the event, please login first!",
        onConfirm: () {
          Get.back();
          Get.back();
          Get.toNamed(Routes.LOGIN);
        },
      );
      return;
    }

    isLoading.value = true;
    try {
      if (isJoined.value) {
        await firestore
            .collection("events")
            .doc(eventId)
            .get()
            .then((DocumentSnapshot document) async {
          if (document.exists) {
            await firestore.collection("events").doc(eventId).update({
              "participant":
                  (document["participant"] > 0 ? document["participant"] : 1) -
                      1
            });
            await firestore
                .collection("users")
                .doc(auth.currentUser?.uid)
                .update({
              "followed_event": FieldValue.arrayRemove([eventId])
            });
          } else {
            errorMessage = 'Document does not exist on the database';
          }
        });
      } else {
        await firestore
            .collection("events")
            .doc(eventId)
            .get()
            .then((DocumentSnapshot document) async {
          if (document.exists) {
            await firestore
                .collection("events")
                .doc(eventId)
                .update({"participant": document["participant"] + 1});
            await firestore
                .collection("users")
                .doc(auth.currentUser?.uid)
                .update({
              "followed_event": FieldValue.arrayUnion([eventId])
            });
          } else {
            errorMessage = 'Document does not exist on the database';
          }
        });
      }
    } on FirebaseAuthException catch (e) {
      errorMessage =
          firebaseHumanizeErrorCode(e.code) ?? "Unexpected Error Occured";
    } catch (e) {
      errorMessage = e.toString();
    }

    checkIsJoined();
    isLoading.value = false;
  }

  void checkIsJoined() async {
    try {
      await firestore
          .collection("users")
          .doc(auth.currentUser?.uid)
          .get()
          .then((DocumentSnapshot document) {
        if (document.exists) {
          isJoined.value = document["followed_event"].contains(eventId);
        } else {
          errorMessage = 'Document does not exist on the database';
        }
      });
    } on FirebaseAuthException catch (e) {
      errorMessage =
          firebaseHumanizeErrorCode(e.code) ?? "Unexpected Error Occured";
    } catch (e) {
      errorMessage = e.toString();
    }
  }
}
