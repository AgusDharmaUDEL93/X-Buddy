import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:x_buddy/app/data/model/event.dart';

class EditEventController extends GetxController {
  TextEditingController eventTitleController = TextEditingController();
  TextEditingController eventCategoryController = TextEditingController();
  TextEditingController eventLocationController = TextEditingController();
  TextEditingController eventDateController = TextEditingController();
  TextEditingController eventTimeController = TextEditingController();
  TextEditingController eventDescriptionController = TextEditingController();
  final images = XFile('').obs;

  //Method untuk mengambil data dari halaman sebelumnya
  void loadEventData(Event event) {
    eventTitleController.text = event.title;
    eventCategoryController.text = event.category;
    eventLocationController.text = event.location;
    eventDateController.text = event.date;
    eventTimeController.text = event.time;
    eventDescriptionController.text = event.description;
    //load images dari halaman sebelumnya
    images.value = XFile(event.imageUrl);
    // Load other fields as necessary
    update();
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

  @override
  void onInit() {
    final eventJson = Get.arguments as Map<String, dynamic>;
    final event = Event.fromJson(eventJson);
    loadEventData(event);
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    eventTitleController.dispose();
    eventCategoryController.dispose();
    eventLocationController.dispose();
    eventDateController.dispose();
    eventTimeController.dispose();
    eventDescriptionController.dispose();
    super.onClose();
  }
}
