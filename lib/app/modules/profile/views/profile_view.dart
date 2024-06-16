import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/routes/app_pages.dart';
//import 'package:x_buddy/app/modules/profile/views/open_verify.dart';

import '../../../widgets/card_profile.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 30,
          ),
          child: Obx(
            () => controller.isLogin.value
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Giarty",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "giarty.kireina@gmail.com",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                      ),
                      Text(
                        controller.isVerify.value ? "Verify" : "Not Verify",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: controller.isVerify.value
                                    ? Colors.green
                                    : Colors.red),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      !controller.isVerify.value
                          ? Column(
                              children: [
                                SizedBox(
                                  width: Get.width,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Get.toNamed(Routes.OPEN_VERIFY);
                                    },
                                    child: const Text("Verify Account"),
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                              ],
                            )
                          : const SizedBox(),
                      CardProfile(
                        onTap: () {
                          Get.toNamed(Routes.ACCOUNT_SETTING);
                        },
                        title: "Account Setting",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 15,
                      ),
                      CardProfile(
                        onTap: () {
                          Get.toNamed(Routes.PASSWORD_SETTING);
                        },
                        title: "Password Setting",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 15,
                      ),
                      CardProfile(
                        onTap: () {
                          Get.toNamed(Routes.APPLIED_EVENT);
                        },
                        title: "Followed Event",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 15,
                      ),
                      controller.isVerify.value
                          ? Column(
                              children: [
                                CardProfile(
                                  onTap: () {
                                    Get.toNamed(Routes.YOUR_EVENT);
                                  },
                                  title: "Your Event",
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Divider(),
                              ],
                            )
                          : const SizedBox(),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: FilledButton(
                          onPressed: () {},
                          child: const Text("Logout"),
                        ),
                      )
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                        width: Get.width,
                        child: FilledButton(
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: const Text("Login"),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: OutlinedButton(
                          onPressed: () {
                            Get.toNamed(Routes.REGISTER);
                          },
                          child: const Text("Register"),
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
