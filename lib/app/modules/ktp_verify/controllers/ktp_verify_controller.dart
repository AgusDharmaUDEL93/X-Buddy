import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/firebase_humanize_error_code.dart';

class KtpVerifyController extends GetxController {
  final images = XFile('').obs;
  var isLoading = false.obs;
  String? errorMessage;

  final firebase = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  Future getImages(bool galery) async {
    ImagePicker imagePicker = ImagePicker();
    XFile? pickedFile;

    if (galery) {
      pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
      );
    } else {
      pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    }

    if (pickedFile != null) {
      images.value = pickedFile;
    }
  }

  void onVerifyKTP() async {
    if (images.value.path.isEmpty) {
      Get.snackbar("No File KTP", "Please provides the KTP file");
      return;
    }

    isLoading.value = true;
    try {
      await firebase
          .collection("users")
          .doc(auth.currentUser?.uid)
          .update({"isVerify": true});
    } on FirebaseAuthException catch (e) {
      errorMessage =
          firebaseHumanizeErrorCode(e.code) ?? "Unexpected Error Occured";
    } catch (e) {
      errorMessage = e.toString();
    }

    isLoading.value = false;

    Get.defaultDialog(
      title: errorMessage == null ? "Success" : "Error",
      middleText: errorMessage == null
          ? "Success to verify this account"
          : "Failed to verify because : $errorMessage",
      onConfirm: () {
        Get.back();
        Get.back();
        Get.back();
        Get.back();
      },
    );
  }
}
