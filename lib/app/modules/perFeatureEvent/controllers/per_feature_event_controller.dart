import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../data/model/event.dart';

class PerFeatureEventController extends GetxController {
  var isLoading = false.obs;
  String? errorMessage;
  late String type;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    type = Get.parameters["type"].toString();

    print("type");
  }

  Stream<List<Event>> getPopularEvent() {
    return firestore
        .collection('events')
        .where("category", isEqualTo: type)
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
    return firestore
        .collection('events')
        .where("category", isEqualTo: type)
        .limit(5)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => Event.fromJson(doc.data())).toList());
  }
}
