import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                width: Get.width,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: controller.formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/img/illustration_register.png"),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Join us in XBuddy",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Create your account",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            controller: controller.nameController,
                            validator: controller.onNameValidation,
                            decoration: const InputDecoration(
                              label: Text("Name"),
                              border: OutlineInputBorder(),
                              hintText: "Insert Your Name",
                            ),
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
                            height: 20,
                          ),
                          Obx(
                            () => TextFormField(
                              controller: controller.passwordController,
                              validator: controller.onPasswordValidation,
                              obscureText: controller.isPasswordObscure.value,
                              decoration: InputDecoration(
                                label: const Text("Password"),
                                border: const OutlineInputBorder(),
                                hintText: "Insert Your Password",
                                suffixIcon: IconButton(
                                  icon: controller.isPasswordObscure.value
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off),
                                  onPressed:
                                      controller.onChangeVisibilitPassword,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(
                            () => TextFormField(
                              controller: controller.confirmPasswordController,
                              validator: controller.onConfirmPasswordValidation,
                              obscureText:
                                  controller.isConfirmPasswordObscure.value,
                              decoration: InputDecoration(
                                label: const Text("Confirm Password"),
                                border: const OutlineInputBorder(),
                                hintText: "Repeat Your Password",
                                suffixIcon: IconButton(
                                  icon:
                                      controller.isConfirmPasswordObscure.value
                                          ? const Icon(Icons.visibility)
                                          : const Icon(Icons.visibility_off),
                                  onPressed: controller
                                      .onChangeVisibilitConfirmPassword,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: Get.width,
                            child: FilledButton(
                              onPressed: controller.onRegister,
                              child: const Text("Register"),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text("Already have an account?"),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  "Login",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
