import 'package:get/get.dart';

import '../modules/account_setting/bindings/account_setting_binding.dart';
import '../modules/account_setting/views/account_setting_view.dart';
import '../modules/discussion/bindings/discussion_binding.dart';
import '../modules/discussion/views/discussion_view.dart';
import '../modules/event/bindings/event_binding.dart';
import '../modules/event/views/event_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/ktp_verify/bindings/ktp_verify_binding.dart';
import '../modules/ktp_verify/views/ktp_verify_view.dart';
import '../modules/open_verify/bindings/open_verify_binding.dart';
import '../modules/open_verify/views/open_verify_view.dart';
import '../modules/password_setting/bindings/password_setting_binding.dart';
import '../modules/password_setting/views/password_setting_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/verify/bindings/verify_binding.dart';
import '../modules/verify/views/verify_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
      name: _Paths.OPEN_VERIFY,
      page: () => const OpenVerifyView(),
      binding: OpenVerifyBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY,
      page: () => const VerifyView(),
      binding: VerifyBinding(),
    ),
    GetPage(
      name: _Paths.KTP_VERIFY,
      page: () => const KtpVerifyView(),
      binding: KtpVerifyBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_SETTING,
      page: () => const AccountSettingView(),
      binding: AccountSettingBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD_SETTING,
      page: () => const PasswordSettingView(),
      binding: PasswordSettingBinding(),
    ),
  ];
}
