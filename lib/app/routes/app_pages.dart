import 'package:get/get.dart';

import '../modules/discussion/bindings/discussion_binding.dart';
import '../modules/discussion/views/discussion_view.dart';
import '../modules/event/bindings/event_binding.dart';
import '../modules/event/views/event_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EVENT,
      page: () => const EventView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: _Paths.DISCUSSION,
      page: () => const DiscussionView(),
      binding: DiscussionBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
