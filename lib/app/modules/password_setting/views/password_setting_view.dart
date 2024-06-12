import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/profile/views/profile_view.dart';

import '../controllers/password_setting_controller.dart';

class PasswordSettingView extends GetView<PasswordSettingController> {
  const PasswordSettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.scrim),
        backgroundColor: Colors.white,
        title: Text(
          "Password Setting",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Theme.of(context).colorScheme.scrim),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 23, left: 16, right: 16),
        child: Column(
          children: [
            TextFormField(
              obscureText: true,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Insert your old password",
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  label: Text("Old Password"),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim)),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Insert your new password",
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  label: Text("New Password"),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim)),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Confirm your new password",
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  label: Text("New Password Confirm"),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim)),
            ),
            const SizedBox(height: 55),
            Center(
              child: SizedBox(
                width: Get.width,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(ProfileView());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary),
                    child: Text(
                      'Update',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
