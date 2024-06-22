import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final auth = FirebaseFirestore.instance;
  var name = ''.obs;
  var email = ''.obs;

  var isLogin = true.obs;
  var isVerify = false.obs;

  @override
  void onInit() {
    getDataProfile();
    super.onInit();
  }

  onVerifyAccount() {
    isVerify.value = true;
  }

  getDataProfile() async {
    try {
      await auth
          .collection('users')
          .doc('ttv1jJfKlSTBkkN2zvYCWhV5XcK2')
          .get()
          .then((DocumentSnapshot snapshot) {
        name.value = snapshot['name'];
        print(name);
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
