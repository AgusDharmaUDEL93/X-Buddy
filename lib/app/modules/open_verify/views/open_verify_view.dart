import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/verify/views/verify_view.dart';

//import '../../profile/views/verify_view.dart';
import '../controllers/open_verify_controller.dart';

class OpenVerifyView extends GetView<OpenVerifyController> {
  const OpenVerifyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.inverseSurface),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 328,
              height: 244.4,
              child: Image.asset('assets/img/open_verify.png'),
            ),
            const SizedBox(height: 8),
            Text(
              "Account Verification for Event Addition",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              textAlign: TextAlign.center,
            ),
            Text(
              "Verify your account to add events. This includes ID checks and email and phone validation to ensure event authenticity and platform security.",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 100),
            Center(
              child: SizedBox(
                width: Get.width,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const VerifyView());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary),
                    child: Text(
                      'Verify Your Account',
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
