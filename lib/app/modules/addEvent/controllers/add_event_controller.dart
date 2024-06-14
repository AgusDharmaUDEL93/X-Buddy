import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEventController extends GetxController {
  final dateController = TextEditingController();
  final timeController = TextEditingController();

  // Membuat Widget Date Picker
  datePicker(BuildContext context) async {
    DateTime? pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (pickerDate != null) {
      dateController.text =
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
      timeController.text =
          "${pickerTime.hour.toString().padLeft(2, '0')} : ${pickerTime.minute.toString().padLeft(2, '0')}";
      update();
    } else {
      print('Time is not selected');
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

  @override
  void onClose() {
    dateController.dispose();
    super.onClose();
  }
}
