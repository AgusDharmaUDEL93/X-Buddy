import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/edit_event_controller.dart';

class EditEventView extends GetView<EditEventController> {
  const EditEventView({super.key});
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
                GetBuilder<EditEventController>(
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
                GetBuilder<EditEventController>(
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
                GetBuilder<EditEventController>(
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
                GetBuilder<EditEventController>(
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
                GetBuilder<EditEventController>(
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
                GetBuilder<EditEventController>(
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
                GetBuilder<EditEventController>(
                  builder: (_) => Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 100,
                          width: Get.width * 0.5,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: controller.images.value.path.isNotEmpty
                              ? (controller.images.value.path
                                      .startsWith('http') // Jika path dari URL
                                  ? CachedNetworkImage(
                                      imageUrl: controller.images.value.path,
                                      fit: BoxFit.cover,
                                      width: Get.width * 0.5,
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    )
                                  : Image.file(
                                      // Jika path dari file lokal
                                      File(controller.images.value.path),
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: Get.width * 0.5,
                                    ))
                              : const Icon(Icons
                                  .add_a_photo), // Jika tidak ada gambar, tampilkan ikon ini
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () async {
                          await controller.getImages(true);
                          controller.update();
                        },
                      )
                    ],
                  ),
                ),

                //Tombol Submit
                const SizedBox(height: 15),
                SizedBox(
                  width: Get.width,
                  child: FilledButton(
                    onPressed: () async {
                      // if (controller.eventTitleController.text.isEmpty ||
                      //     controller.eventCategoryController.text.isEmpty ||
                      //     controller.eventLocationController.text.isEmpty ||
                      //     controller.eventDateController.text.isEmpty ||
                      //     controller.eventTimeController.text.isEmpty ||
                      //     controller
                      //         .eventDescriptionController.text.isEmpty ||
                      //     controller.images.value.path.isEmpty) {
                      //   Get.snackbar(
                      //       'Error', 'Lengkapi data terlebih dahulu',
                      //       snackPosition: SnackPosition.BOTTOM,
                      //       backgroundColor: Colors.red,
                      //       colorText: Colors.white,
                      //       borderRadius: 10,
                      //       margin: const EdgeInsets.all(10),
                      //       snackStyle: SnackStyle.FLOATING);
                      // } else {
                      // print('save data');
                      // await controller.saveData(
                      //   controller.eventTitleController.text,
                      //   controller.eventCategoryController.text,
                      //   controller.eventLocationController.text,
                      //   controller.eventDateController.text,
                      //   controller.eventTimeController.text,
                      //   controller.eventDescriptionController.text,
                      //   File(controller.images.value.path),
                      // );
                      // Get.back();
                      // Get.snackbar(
                      //     "Berhasil", "Event berhasil ditambahkan.",
                      //     backgroundColor: Colors.green,
                      //     colorText: Colors.white);
                    },
                    child: const Text("Create Event"),
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
