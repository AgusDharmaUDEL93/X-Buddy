import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/add_event_controller.dart';

class AddEventView extends GetView<AddEventController> {
  const AddEventView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Event'),
      ),
      body: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                //Event Title Form
                const SizedBox(height: 15),
                GetBuilder<AddEventController>(
                  builder: (controller) => TextFormField(
                    focusNode: FocusNode(),
                    controller: controller.eventTitleController,
                    decoration: const InputDecoration(
                      label: Text("Event Title"),
                      border: OutlineInputBorder(),
                      hintText: "Insert Your Event Title",
                    ),
                  ),
                ),

                //Event Category Form
                const SizedBox(height: 15),
                GetBuilder<AddEventController>(
                  builder: (controller) => TextFormField(
                    focusNode: FocusNode(),
                    controller: controller.eventCategoryController,
                    decoration: const InputDecoration(
                      label: Text("Event Category"),
                      border: OutlineInputBorder(),
                      hintText: "Insert Your Event Category",
                    ),
                  ),
                ),

                //Event Location Form
                const SizedBox(height: 15),
                GetBuilder<AddEventController>(
                  builder: (controller) => TextFormField(
                    focusNode: FocusNode(),
                    controller: controller.eventLocationController,
                    decoration: const InputDecoration(
                      label: Text("Event Location"),
                      border: OutlineInputBorder(),
                      hintText: "Insert Your Event Location",
                    ),
                  ),
                ),

                //Event Date Form
                const SizedBox(height: 15),
                GetBuilder<AddEventController>(
                  builder: (controller) => TextFormField(
                    focusNode: FocusNode(),
                    readOnly: true,
                    controller: controller.eventDateController,
                    decoration: InputDecoration(
                      label: const Text("Event Date"),
                      hintText: "00 - 00 - 0000",
                      suffixIcon: IconButton(
                          onPressed: () async {
                            print("Icons.calendar_month");
                            controller.datePicker(context);
                            controller.update();
                          },
                          icon: const Icon(Icons.calendar_month)),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                //Event (Time) Form
                const SizedBox(height: 15),
                GetBuilder<AddEventController>(
                  builder: (controller) => TextFormField(
                    focusNode: FocusNode(),
                    readOnly: true,
                    controller: controller.eventTimeController,
                    decoration: InputDecoration(
                      label: const Text("Event Time"),
                      hintText: "00 : 00",
                      suffixIcon: IconButton(
                          onPressed: () {
                            print('Icons.access_time');
                            controller.timePicker(context);
                            controller.update();
                          },
                          icon: const Icon(Icons.access_time)),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                //Event Description Form
                const SizedBox(height: 15),
                GetBuilder<AddEventController>(
                  builder: (controller) => TextFormField(
                    focusNode: FocusNode(),
                    controller: controller.eventDescriptionController,
                    keyboardType: TextInputType.multiline,
                    minLines: 5,
                    maxLines: null,
                    decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      label: Text("Event Description"),
                      border: OutlineInputBorder(),
                      hintText: "Insert Your Event Description",
                    ),
                  ),
                ),

                //Menambahkan Container untuk menampung input image
                const SizedBox(height: 15),
                GetBuilder<AddEventController>(
                  builder: (_) => Row(
                    children: [
                      controller.images.value.path != ""
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(controller.images.value.path),
                                height: 100,
                                width: Get.width * 0.5,
                                fit: BoxFit.cover,
                              ),
                            )
                          : GestureDetector(
                              onTap: () async {
                                await controller.getImages(true);
                                controller.update();
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 16),
                                height: 100,
                                width: Get.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(Icons.add_a_photo),
                              ),
                            ),
                      const SizedBox(width: 15),
                      controller.images.value.path != ""
                          ? IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () async {
                                controller.images.value = XFile("");
                                controller.update();
                              },
                            )
                          : const Text('Pilih Foto'),
                    ],
                  ),
                ),

                //Tombol Submit
                const SizedBox(height: 15),
                SizedBox(
                  width: Get.width,
                  child: GetBuilder<AddEventController>(
                    // init: MyController(),
                    initState: (_) {},
                    builder: (_) {
                      return FilledButton(
                        onPressed: () async {
                          if (controller.eventTitleController.text.isEmpty ||
                              controller.eventCategoryController.text.isEmpty ||
                              controller.eventLocationController.text.isEmpty ||
                              controller.eventDateController.text.isEmpty ||
                              controller.eventTimeController.text.isEmpty ||
                              controller
                                  .eventDescriptionController.text.isEmpty ||
                              controller.images.value.path.isEmpty) {
                            Get.snackbar(
                                'Error', 'Lengkapi data terlebih dahulu',
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Colors.red,
                                colorText: Colors.white,
                                borderRadius: 10,
                                margin: const EdgeInsets.all(10),
                                snackStyle: SnackStyle.FLOATING);
                          } else {
                            await controller.saveData(
                              controller.eventTitleController.text,
                              controller.eventCategoryController.text,
                              controller.eventLocationController.text,
                              controller.eventDateController.text,
                              controller.eventTimeController.text,
                              controller.eventDescriptionController.text,
                              File(controller.images.value.path),
                            );
                            Get.back();
                            Get.snackbar(
                                "Berhasil", "Event berhasil ditambahkan.",
                                backgroundColor: Colors.green,
                                colorText: Colors.white);
                          }
                        },
                        child: const Text("Create Event"),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
