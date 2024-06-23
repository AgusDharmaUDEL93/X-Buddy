import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:get/get.dart';
import 'package:x_buddy/app/theme/theme.dart';

import '../modules/account_setting/bindings/account_setting_binding.dart';
import '../modules/account_setting/views/account_setting_view.dart';
import '../modules/addEvent/bindings/add_event_binding.dart';
import '../modules/addEvent/views/add_event_view.dart';
import '../modules/add_discussion/bindings/add_discussion_binding.dart';
import '../modules/add_discussion/views/add_discussion_view.dart';
import '../modules/appliedEvent/bindings/applied_event_binding.dart';
import '../modules/appliedEvent/views/applied_event_view.dart';
import '../modules/discussion/bindings/discussion_binding.dart';
import '../modules/discussion/views/discussion_view.dart';
import '../modules/discussion_detail/bindings/discussion_detail_binding.dart';
import '../modules/discussion_detail/views/discussion_detail_view.dart';
import '../modules/editEvent/bindings/edit_event_binding.dart';
import '../modules/editEvent/views/edit_event_view.dart';
import '../modules/event/bindings/event_binding.dart';
import '../modules/event/views/event_view.dart';
import '../modules/eventDetail/bindings/event_detail_binding.dart';
import '../modules/eventDetail/views/event_detail_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/ktp_verify/bindings/ktp_verify_binding.dart';
import '../modules/ktp_verify/views/ktp_verify_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/open_verify/bindings/open_verify_binding.dart';
import '../modules/open_verify/views/open_verify_view.dart';
import '../modules/password_setting/bindings/password_setting_binding.dart';
import '../modules/password_setting/views/password_setting_view.dart';
import '../modules/perFeatureEvent/bindings/per_feature_event_binding.dart';
import '../modules/perFeatureEvent/views/per_feature_event_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/searchResult/bindings/search_result_binding.dart';
import '../modules/searchResult/views/search_result_view.dart';
import '../modules/verify/bindings/verify_binding.dart';
import '../modules/verify/views/verify_view.dart';
import '../modules/yourEvent/bindings/your_event_binding.dart';
import '../modules/yourEvent/views/your_event_view.dart';

// import '../modules/discussion/bindings/discussion_binding.dart';
// import '../modules/discussion/views/discussion_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => FlutterSplashScreen.fadeIn(
        backgroundColor:
            SchedulerBinding.instance.platformDispatcher.platformBrightness ==
                    Brightness.dark
                ? Colors.black
                : Colors.white,
        childWidget: Center(
          child: Image.asset(
            "assets/img/logo.png",
            width: 120,
          ),
        ),
        nextScreen: const HomeView(),
      ),
      binding: HomeBinding(),
    ),
    GetPage(
        name: _Paths.EVENT,
        page: () => const EventView(),
        binding: EventBinding(),
        transition: Transition.circularReveal,
        transitionDuration: Durations.extralong4),
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
      name: _Paths.EVENT_DETAIL,
      page: () => const EventDetailView(),
      binding: EventDetailBinding(),
    ),
    GetPage(
      name: _Paths.PER_FEATURE_EVENT,
      page: () => const PerFeatureEventView(),
      binding: PerFeatureEventBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_RESULT,
      page: () => const SearchResultView(),
      binding: SearchResultBinding(),
    ),
    GetPage(
      name: _Paths.APPLIED_EVENT,
      page: () => const AppliedEventView(),
      binding: AppliedEventBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_EVENT,
      page: () => const YourEventView(),
      binding: YourEventBinding(),
    ),
    GetPage(
      name: _Paths.ADD_EVENT,
      page: () => const AddEventView(),
      binding: AddEventBinding(),
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
    GetPage(
      name: _Paths.DISCUSSION_DETAIL,
      page: () => const DiscussionDetailView(),
      binding: DiscussionDetailBinding(),
    ),
    GetPage(
      name: _Paths.ADD_DISCUSSION,
      page: () => const AddDiscussionView(),
      binding: AddDiscussionBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_EVENT,
      page: () => const EditEventView(),
      binding: EditEventBinding(),
    ),
  ];
}
