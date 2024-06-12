import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_setting_controller.dart';

class AccountSettingView extends GetView<AccountSettingController> {
  const AccountSettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.scrim),
        backgroundColor: Colors.white,
        title: Text(
          "Account Setting",
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
              initialValue: 'Giarty',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Insert your name here...",
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  label: Text("Name"),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim)),
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: "giarty.kireina@gmail.com",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Insert your Email here...",
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  label: Text("Email"),
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
                      //Get.to(KtpVerifyView());
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
