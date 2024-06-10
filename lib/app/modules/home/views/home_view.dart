import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/modules/discussion/bindings/discussion_binding.dart';
import 'package:x_buddy/app/modules/discussion/views/discussion_view.dart';
import 'package:x_buddy/app/modules/profile/bindings/profile_binding.dart';
import 'package:x_buddy/app/modules/profile/views/profile_view.dart';
import 'package:x_buddy/app/routes/app_pages.dart';

import '../../event/bindings/event_binding.dart';
import '../../event/views/event_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.tabIndex.value,
          onDestinationSelected: controller.changeTabIndex,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Event"),
            NavigationDestination(icon: Icon(Icons.chat), label: "Discussion"),
            NavigationDestination(icon: Icon(Icons.people), label: "Profile"),
          ],
        ),
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.EVENT,
        onGenerateRoute: (settings) {
          if (settings.name == Routes.EVENT) {
            return GetPageRoute(
              routeName: Routes.EVENT,
              page: () => const EventView(),
              binding: EventBinding(),
            );
          }
          if (settings.name == Routes.DISCUSSION) {
            return GetPageRoute(
              routeName: Routes.DISCUSSION,
              page: () => const DiscussionView(),
              binding: DiscussionBinding(),
            );
          }
          if (settings.name == Routes.PROFILE) {
            return GetPageRoute(
              routeName: Routes.PROFILE,
              page: () => const ProfileView(),
              binding: ProfileBinding(),
            );
          }
          return null;
        },
      ),
    );
  }
}
