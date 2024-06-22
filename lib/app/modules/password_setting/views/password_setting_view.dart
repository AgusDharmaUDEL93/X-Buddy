import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/password_setting_controller.dart';

class PasswordSettingView extends GetView<PasswordSettingController> {
  const PasswordSettingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password Setting"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Obx(
          () => controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Form(
                  key: controller.keys,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: controller.newPassword,
                        validator: (value) =>
                            value!.isEmpty ? "Fill the Password" : null,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("New Password"),
                          hintText: "Insert your new password",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: controller.confirmPassword,
                        validator: (value) =>
                            value!.isEmpty ? "Fill the Confirm Password" : null,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("New Password Confirm"),
                          hintText: "Confirm your new password",
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: FilledButton(
                          onPressed: () {
                            controller.onChangePassword();
                            // Get.snackbar("Notification", controller.message!);
                          },
                          child: const Text("Change Password"),
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
