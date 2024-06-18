import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddEventController extends GetxController {
  final eventTitleController = TextEditingController();
  final eventCategoryController = TextEditingController();
  final eventLocationController = TextEditingController();
  final eventDateController = TextEditingController();
  final eventTimeController = TextEditingController();
  final eventDescriptionController = TextEditingController();
  final images = XFile('').obs;

  // Membuat Widget Date Picker
  datePicker(BuildContext context) async {
    DateTime? pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (pickerDate != null) {
      eventDateController.text =
          "${pickerDate.day.toString().padLeft(2, '0')} - ${pickerDate.month.toString().padLeft(2, '0')} - ${pickerDate.year}";
      update();
    } else {
      print('Date is not selected');
    }
  }

  // Membuat Widget Time Picker
  timePicker(BuildContext context) async {
    TimeOfDay? pickerTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickerTime != null) {
      eventTimeController.text =
          "${pickerTime.hour.toString().padLeft(2, '0')} : ${pickerTime.minute.toString().padLeft(2, '0')}";
      update();
    } else {
      print('Time is not selected');
    }
  }

  //Fungsi Untuk Mendapatkan Images dari penyimpanan lokal Handphone
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

  //method untuk meng-upload images ke dalam storage (cloud_storage)
  //Akan mengembalikan string berupa path dari foto yang telah di-upload di cloud_storage
  Future<String> uploadImages(File images) async {
    final storageRef =
        FirebaseStorage.instance.ref().child('eventImages/${images.path}');
    await storageRef.putFile(images);
    String returnUrl = '';
    await storageRef.getDownloadURL().then((fileUrl) {
      returnUrl = fileUrl;
    });

    return returnUrl;
  }

  //Method untuk mengambil data name dari user yang sedang login
  Future<String> getUserName(String uid) async {
    String userName = '';
    try {
      DocumentSnapshot userDoc =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      userName = userDoc['name'];
    } catch (e) {
      print('Error getting user name: $e');
    }
    return userName;
  }

  //Method digunakan untuk menyimpan data dan images ke dalam database
  Future<void> saveData(
    String eventTitle,
    String eventCategory,
    String eventLocation,
    String eventDate,
    String eventTime,
    String eventDescription,
    File images,
  ) async {
    var currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      Get.snackbar('Error', 'User is not logged in');
      return;
    }
    String authorUid = currentUser.uid;
    //Mendapatkan nama user yang sedang login
    String userName = await getUserName(authorUid);
    //Menampilkan loading indicator
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
      barrierDismissible: false,
    );
    ////upload file ke cloud_storage dan simpan pada imageURl
    String imageURL = await uploadImages(images);
    final refDoc = FirebaseFirestore.instance.collection('events').doc();

    //upload data ke database(cloud_firestore)
    final eventData = {
      'title': eventTitle,
      'category': eventCategory,
      'location': eventLocation,
      'date': eventDate,
      'time': eventTime,
      'description': eventDescription,
      'image_url': imageURL,
      'author_uid': userName,
      'author_name': userName,
    };
    refDoc.set(eventData);
    Get.back();
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

  @override
  void onClose() {
    eventTitleController.dispose();
    eventLocationController.dispose();
    eventDescriptionController.dispose();
    eventDateController.dispose();
    eventTimeController.dispose();
    super.onClose();
  }
}
