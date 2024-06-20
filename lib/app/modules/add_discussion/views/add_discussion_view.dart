import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_discussion_controller.dart';

class AddDiscussionView extends GetView<AddDiscussionController> {
  const AddDiscussionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Discussion'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Column(
            children: [
              TextFormField(
                controller: controller.titleController,
                validator: controller.onTitleValidation,
                decoration: const InputDecoration(
                  label: Text("Title"),
                  border: OutlineInputBorder(),
                  hintText: "Insert Discussion Title",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.descriptionController,
                validator: controller.onDescriptionValidation,
                decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  label: Text("Description"),
                  border: OutlineInputBorder(),
                  hintText: "Insert Discussion Description",
                ),
                minLines:
                    6, // any number you need (It works as the rows for the textarea)
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width,
                child: FilledButton(
                  onPressed: controller.onAddDiscussion,
                  child: const Text("Add Discussion"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
