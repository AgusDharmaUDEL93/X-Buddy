import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/event.dart';

import '../../../routes/app_pages.dart';

class YourEventController extends GetxController {
  //Membaca seluruh data yang telah ditambahkan oleh user dari database(cloud_firestore) dan menampilkannya pada halaman ini
  Stream<List<Event>> getYourEvent() {
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      return FirebaseFirestore.instance
          .collection('events')
          .where('author_uid', isEqualTo: currentUser.uid)
          .snapshots()
          .map((snapshot) {
        print('Snapshot data length: ${snapshot.docs.length}');
        return snapshot.docs.map((doc) => Event.fromJson(doc.data())).toList();
      });
    } else {
      // Mengembalikan stream kosong atau mengelola kondisi pengguna yang tidak masuk
      return const Stream.empty();
    }
  }

  // Memeriksa status verifikasi pengguna
  Future<void> checkUserVerification() async {
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get();

      if (userDoc.exists && userDoc['isVerify'] == true) {
        Get.toNamed(Routes.ADD_EVENT);
      } else {
        Get.snackbar(
          'Akses Ditolak',
          'Anda belum terverifikasi',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } else {
      Get.snackbar(
        'Akses Ditolak',
        'Pengguna tidak ditemukan',
        snackPosition: SnackPosition.BOTTOM,
      );
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
