import 'package:get/get.dart';

import '../controllers/per_feature_event_controller.dart';

class PerFeatureEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerFeatureEventController>(
      () => PerFeatureEventController(),
    );
  }
}
