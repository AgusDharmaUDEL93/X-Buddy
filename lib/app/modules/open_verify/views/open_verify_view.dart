import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

//import '../../profile/views/verify_view.dart';
import '../controllers/open_verify_controller.dart';

class OpenVerifyView extends GetView<OpenVerifyController> {
  const OpenVerifyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/img/open_verify.png"),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Account Verification for Event Addition",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Verify your account to add events. This includes ID checks and email and phone validation to ensure event authenticity and platform security.",
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: Get.width,
                  child: FilledButton(
                    onPressed: () {
                      Get.toNamed(Routes.VERIFY);
                    },
                    child: const Text("Verify Your Account"),
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
