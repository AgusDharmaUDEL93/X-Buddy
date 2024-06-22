import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/post.dart';

class DiscussionController extends GetxController {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<List<Post>> getDiscussion() {
    return firestore.collection('posts').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Post.fromJson(doc.data())).toList());
  }
}
