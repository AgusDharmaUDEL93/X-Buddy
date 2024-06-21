import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var isLogin = false.obs;
  var isVerify = false.obs;

  var isLoading = false.obs;
  String? errorMessage;

  var name = "".obs;
  var email = "".obs;

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void onInit() async {
    super.onInit();
    onRefresh();
  }

  void onLogout() {
    Get.defaultDialog(
      title: "Logout",
      middleText: "Are u sure want to logout?",
      onConfirm: () async {
        await auth.signOut();
        onRefresh();
        Get.back();
      },
      onCancel: () {
        Get.back();
      },
    );
  }

  void onRefresh() async {
    isLoading.value = true;

    if (auth.currentUser == null) {
      isLoading.value = false;
      isLogin.value = false;
      return;
    }

    isLogin.value = true;
    email.value = auth.currentUser?.email ?? "";

    await firestore
        .collection("users")
        .doc(auth.currentUser?.uid)
        .get()
        .then((DocumentSnapshot document) {
      if (document.exists) {
        isVerify.value = document["isVerify"];
        name.value = document["name"];
      } else {
        errorMessage = 'Document does not exist on the database';
      }
    });

    isLoading.value = false;
  }
}
