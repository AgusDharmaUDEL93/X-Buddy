import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/profile/controllers/profile_controller.dart';
import 'package:x_buddy/app/modules/profile/views/profile_view.dart';

import '../controllers/ktp_verify_controller.dart';

class KtpVerifyView extends GetView<KtpVerifyController> {
  const KtpVerifyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final verified = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.scrim),
        backgroundColor: Theme.of(context).colorScheme.inverseSurface,
        title: Text('KTP Verify',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Theme.of(context).colorScheme.scrim)),
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 21),
        child: Column(
          children: [
            SizedBox(
              width: 250,
              height: 162,
              child: Image.asset('assets/img/KTP.png'),
            ),
            const SizedBox(height: 24),
            Text(
              'KTP Verification Process',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              'Verify your account by completing the KTP (Indonesian ID) verification. This process ensures the authenticity of your identity and enhances the security of our platform. Simply upload a photo of your KTP for quick and secure verification.',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.scrim),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Center(
              child: SizedBox(
                width: Get.width,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              'Verification Submitted',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            content: Text(
                                style: Theme.of(context).textTheme.bodyMedium,
                                'Your KTP verification is submitted. Check your email for confirmation. Verification may take up to 24 hours. Thank you!'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    verified.IsVerify();
                                    Get.off(ProfileView());
                                  },
                                  child: Text('Okay'))
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary),
                    child: Text(
                      'Upload',
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
