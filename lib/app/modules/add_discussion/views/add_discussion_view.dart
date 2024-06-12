import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_discussion_controller.dart';

class AddDiscussionView extends GetView<AddDiscussionController> {
  const AddDiscussionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Discussion'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Title"),
                  border: OutlineInputBorder(),
                  hintText: "Insert Discussion Title",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                  hintText: "Insert Discussion Description",
                ),
                minLines:
                    6, // any number you need (It works as the rows for the textarea)
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width,
                child: FilledButton(
                  onPressed: () {},
                  child: Text("Add Discussion"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
