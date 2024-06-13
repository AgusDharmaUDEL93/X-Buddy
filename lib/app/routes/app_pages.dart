import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../modules/appliedEvent/bindings/applied_event_binding.dart';
import '../modules/appliedEvent/views/applied_event_view.dart';
import '../modules/discussion/bindings/discussion_binding.dart';
import '../modules/discussion/views/discussion_view.dart';
import '../modules/event/bindings/event_binding.dart';
import '../modules/event/views/event_view.dart';
import '../modules/eventDetail/bindings/event_detail_binding.dart';
import '../modules/eventDetail/views/event_detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/perFeatureEvent/bindings/per_feature_event_binding.dart';
import '../modules/perFeatureEvent/views/per_feature_event_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/searchResult/bindings/search_result_binding.dart';
import '../modules/searchResult/views/search_result_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.APPLIED_EVENT;

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
        transition: Transition.zoom,
        transitionDuration: Durations.long2),
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
  ];
}
