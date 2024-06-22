import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../data/model/event.dart';

class SearchResultController extends GetxController {
  var isLoading = false.obs;

  late String keywords;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();

    keywords = Get.parameters["keywords"].toString();
  }

  Stream<List<Event>> getEvent() {
    print(keywords);
    return firestore.collection('events').snapshots().map((snapshot) => snapshot
        .docs
        .map((doc) => Event.fromJson(doc.data()))
        .where((s) => s.title.toLowerCase().contains(keywords.toLowerCase()))
        .toList());
  }
}
