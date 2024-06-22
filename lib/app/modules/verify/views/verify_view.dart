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
        ),
        child: Form(
          key: controller.keys,
          child: Column(
            children: [
              TextFormField(
                controller: controller.name,
                validator: (value) =>
                    value!.isEmpty ? "Name can't be empty" : null,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Name"),
                    hintText: "Insert Your Name Base Your Identity"),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: controller.id,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "NIK can't be empty";
                  } else if (value.length < 16) {
                    return "NIK must 16 digits";
                  }
                  return null;
                },
                maxLength: 16,
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
                  onPressed: () {
                    // Get.toNamed(Routes.KTP_VERIFY);
                    controller.checkInput();
                  },
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
