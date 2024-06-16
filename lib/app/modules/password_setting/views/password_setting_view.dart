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
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Old Password"),
                  hintText: "Insert your old password",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
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
                  onPressed: () {},
                  child: const Text("Change Password"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
