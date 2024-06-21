import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:x_buddy/app/data/model/event.dart';

class EditEventController extends GetxController {
  TextEditingController eventTitleController = TextEditingController();
  TextEditingController eventLocationController = TextEditingController();
  TextEditingController eventDateController = TextEditingController();
  TextEditingController eventTimeController = TextEditingController();
  TextEditingController eventDescriptionController = TextEditingController();
  final images = XFile('').obs;
  final selectedCategory = ''.obs;
  late String keyword;

  final categoryList = ["Competition", "Seminar", "Tech Talk", "Workshop"];

  void loadEventData(Event event) {
    eventTitleController.text = event.title;
    selectedCategory.value = event.category;
    eventLocationController.text = event.location;
    eventDateController.text = event.date;
    eventTimeController.text = event.time;
    eventDescriptionController.text = event.description;
    // images.value = XFile(event.image);
    update();
  }

  Future<String> uploadFile(File? image, bool isFileChanged) async {
    if (isFileChanged && image != null) {
      final storageReference =
          FirebaseStorage.instance.ref().child('eventImages/${image.path}');

      try {
        await storageReference.putFile(image);
        String fileURL = await storageReference.getDownloadURL();
        return fileURL;
      } catch (e) {
        print('Error uploading image: $e');
        return '';
      }
    } else {
      return images.value.path;
    }
  }

  Future<String> uploadImages(File image, bool isFileChanged) async {
    final storageRef =
        FirebaseStorage.instance.ref().child('eventImages/${image.path}');
    await storageRef.putFile(image);
    String returnUrl = '';
    await storageRef.getDownloadURL().then((fileUrl) {
      returnUrl = fileUrl;
    });

    return returnUrl;
  }

  Future<void> updateEventDataWithEditImage(
      String eventTitle,
      String eventCategory,
      String eventLocation,
      String eventDate,
      String eventTime,
      String eventDescription,
      File images,
      bool isFileChanged) async {
    String imageURL = await uploadImages(images, isFileChanged);

    final refDoc = FirebaseFirestore.instance.collection('events').doc(keyword);
    await refDoc.update({
      'title': eventTitle,
      'category': eventCategory,
      'location': eventLocation,
      'date': eventDate,
      'time': eventTime,
      'description': eventDescription,
      'image': imageURL,
    });
  }

  Future<void> updateEventDataWithoutEditImage(
      String eventTitle,
      String eventCategory,
      String eventLocation,
      String eventDate,
      String eventTime,
      String eventDescription,
      bool isFileChanged) async {
    final refDoc = FirebaseFirestore.instance.collection('events').doc(keyword);
    await refDoc.update({
      'title': eventTitle,
      'category': eventCategory,
      'location': eventLocation,
      'date': eventDate,
      'time': eventTime,
      'description': eventDescription,
    });
  }

  void datePicker(BuildContext context) async {
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

  void timePicker(BuildContext context) async {
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

  Future<void> getImages(bool gallery) async {
    ImagePicker imagePicker = ImagePicker();
    XFile? pickedFile;

    if (gallery) {
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
    keyword = Get.parameters['event_id'].toString();
    super.onInit();
  }

  @override
  void onClose() {
    eventTitleController.dispose();
    eventLocationController.dispose();
    eventDateController.dispose();
    eventTimeController.dispose();
    eventDescriptionController.dispose();
    super.onClose();
  }
}
