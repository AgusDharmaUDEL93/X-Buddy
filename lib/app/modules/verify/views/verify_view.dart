import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/ktp_verify/views/ktp_verify_view.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  const VerifyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify Your Identity"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.nameController,
                validator: controller.onNameValidation,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Name"),
                    hintText: "Insert Your Name Base Your Identity"),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: controller.nikController,
                validator: controller.onNikValidation,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("NIK"),
                  hintText: "Insert Your Name Base Your Identity",
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              SizedBox(
                width: Get.width,
                child: FilledButton(
                  onPressed: controller.onVerify,
                  child: const Text("Next"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
