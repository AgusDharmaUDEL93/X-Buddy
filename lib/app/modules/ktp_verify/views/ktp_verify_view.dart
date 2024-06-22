import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ktp_verify_controller.dart';

class KtpVerifyView extends GetView<KtpVerifyController> {
  const KtpVerifyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KTP Verify"),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   "assets/img/KTP.png",
                    //   width: 250,
                    // ),
                    Obx(
                      () => InkWell(
                        onTap: () async {
                          await controller.getImages(true);
                        },
                        child: ClipRRect(
                          child: controller.images.value.path != ""
                              ? Image.file(
                                  File(controller.images.value.path),
                                  fit: BoxFit.cover,
                                  width: 250,
                                  height: 160,
                                )
                              : Image.asset(
                                  "assets/img/ktp_placeholder.png",
                                  fit: BoxFit.cover,
                                  width: 250,
                                  height: 160,
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'KTP Verification Process',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Verify your account by completing the KTP (Indonesian ID) verification. This process ensures the authenticity of your identity and enhances the security of our platform. Simply upload a photo of your KTP for quick and secure verification.',
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: Get.width,
                      child: FilledButton(
                        onPressed: controller.onVerifyKTP,
                        child: const Text("Upload"),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
