import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Event Title"),
                    border: OutlineInputBorder(),
                    hintText: "Insert Your Event Title",
                  ),
                ),

                //Event Location Form
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Event Location"),
                    border: OutlineInputBorder(),
                    hintText: "Insert Your Event Location",
                  ),
                ),

                //Event Date Form
                const SizedBox(height: 15),
                GetBuilder<AddEventController>(
                  builder: (controller) => TextFormField(
                    controller: controller.dateController,
                    decoration: InputDecoration(
                      label: const Text("00 / 00 / 0000"),
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
                TextFormField(
                  decoration: InputDecoration(
                    label: const Text("00 : 00"),
                    suffixIcon: IconButton(
                        onPressed: () {
                          print('Icons.access_time');
                        },
                        icon: const Icon(Icons.access_time)),
                    border: const OutlineInputBorder(),
                  ),
                ),

                //Event Description Form
                const SizedBox(height: 15),
                TextFormField(
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

                //Tombol Submit
                const SizedBox(height: 15),
                SizedBox(
                  width: Get.width,
                  child: FilledButton(
                    onPressed: () {},
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
