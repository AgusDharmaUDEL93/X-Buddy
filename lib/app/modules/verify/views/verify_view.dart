import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/ktp_verify/views/ktp_verify_view.dart';

import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  const VerifyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.scrim),
        backgroundColor: Theme.of(context).colorScheme.inverseSurface,
        title: Text(
          "Verify Your Identity",
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
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Insert Your Name Base Your Identity",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim),
                  label: Text("Name"),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim)),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: "Insert Your NIK Base Your Identity",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.scrim),
                  label: Text("NIK"),
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
                      Get.to(KtpVerifyView());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary),
                    child: Text(
                      'Next',
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
