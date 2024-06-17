import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/img/illustration_login.png"),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome back to XBuddy",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Login in your account",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GetBuilder<LoginController>(
                    // init: MyController(),
                    initState: (_) {},
                    builder: (_) {
                      return TextFormField(
                        controller: controller.emailController,
                        decoration: const InputDecoration(
                          label: Text("Email"),
                          border: OutlineInputBorder(),
                          hintText: "Insert Your Email",
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GetBuilder<LoginController>(
                    // init: MyController(),
                    initState: (_) {},
                    builder: (_) {
                      return TextFormField(
                        controller: controller.passwordController,
                        decoration: const InputDecoration(
                          label: Text("Password"),
                          border: OutlineInputBorder(),
                          hintText: "Insert Your Password",
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: Get.width,
                    child: GetBuilder<LoginController>(
                      // init: MyController(),
                      initState: (_) {},
                      builder: (_) {
                        return TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            alignment: Alignment.centerLeft,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.FORGOT_PASSWORD);
                          },
                          child: const Text("Forgot Password?"),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                      width: Get.width,
                      child: FilledButton(
                        onPressed: () {
                          controller.login(controller.emailController.text,
                              controller.passwordController.text);
                        },
                        child: const Text("Login"),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account?"),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.REGISTER);
                        },
                        child: Text(
                          "Register",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
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
    );
  }
}
