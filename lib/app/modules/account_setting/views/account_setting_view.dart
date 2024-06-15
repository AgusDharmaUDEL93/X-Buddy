import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_setting_controller.dart';

class AccountSettingView extends GetView<AccountSettingController> {
  const AccountSettingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Setting"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Name"),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              SizedBox(
                width: Get.width,
                child: FilledButton(
                  onPressed: () {},
                  child: const Text("Update account"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
