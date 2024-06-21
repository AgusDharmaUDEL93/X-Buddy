import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                width: Get.width,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: Get.width,
                          child: Text(
                            "Forgot Password",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Reset your password by entering your email address. We'll send you a link to create a new password. If you don't receive the email, check your spam folder or try again.",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: controller.emailController,
                          validator: controller.onEmailValidation,
                          decoration: const InputDecoration(
                            label: Text("Email"),
                            border: OutlineInputBorder(),
                            hintText: "Insert Your Email",
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: TextButton(
                            onPressed: controller.onResetPassword,
                            child: Center(
                              child: Text(
                                "Send",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
