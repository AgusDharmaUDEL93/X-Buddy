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
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.oldPasswordController,
                        validator: controller.onOldPasswordValidation,
                        obscureText: controller.isOldPasswordObscure.value,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: const Text("Old Password"),
                          hintText: "Insert your old password",
                          suffixIcon: IconButton(
                            icon: controller.isOldPasswordObscure.value
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: controller.onChangeVisibilitOldPassword,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: controller.newPasswordController,
                        validator: controller.onNewPasswordValidation,
                        obscureText: controller.isNewPasswordObscure.value,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: const Text("New Password"),
                          hintText: "Insert your new password",
                          suffixIcon: IconButton(
                            icon: controller.isNewPasswordObscure.value
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: controller.onChangeVisibilitNewPassword,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: controller.newConfirmPasswordController,
                        validator: controller.onNewConfirmPasswordValidation,
                        obscureText:
                            controller.isNewConfirmPasswordObscure.value,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: const Text("New Password Confirm"),
                          hintText: "Confirm your new password",
                          suffixIcon: IconButton(
                            icon: controller.isNewConfirmPasswordObscure.value
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed:
                                controller.onChangeVisibilitNewConfirmPassword,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: FilledButton(
                          onPressed: controller.onChangePassword,
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
