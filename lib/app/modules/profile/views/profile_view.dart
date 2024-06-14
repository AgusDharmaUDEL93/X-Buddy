import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/account_setting/views/account_setting_view.dart';
import 'package:x_buddy/app/modules/open_verify/views/open_verify_view.dart';
import 'package:x_buddy/app/routes/app_pages.dart';
//import 'package:x_buddy/app/modules/profile/views/open_verify.dart';

import '../../../widgets/card_profile.dart';
import '../../password_setting/views/password_setting_view.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 30,
          ),
          child: Obx(
            () => Column(
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
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: controller.isVerify.value
                          ? Colors.green
                          : Colors.red),
                ),
                SizedBox(
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
                              child: Text("Verify Account"),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      )
                    : SizedBox(),
                CardProfile(
                  onTap: () {
                    Get.toNamed(Routes.ACCOUNT_SETTING);
                  },
                  title: "Account Setting",
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(),
                SizedBox(
                  height: 15,
                ),
                CardProfile(
                  onTap: () {
                    Get.toNamed(Routes.PASSWORD_SETTING);
                  },
                  title: "Password Setting",
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(),
                SizedBox(
                  height: 15,
                ),
                CardProfile(
                  onTap: () {},
                  title: "Followed Event",
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(),
                SizedBox(
                  height: 15,
                ),
                controller.isVerify.value
                    ? Column(
                        children: [
                          CardProfile(
                            onTap: () {},
                            title: "Your Event",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(),
                        ],
                      )
                    : SizedBox(),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: Get.width,
                  child: FilledButton(
                    onPressed: () {},
                    child: Text("Logout"),
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
