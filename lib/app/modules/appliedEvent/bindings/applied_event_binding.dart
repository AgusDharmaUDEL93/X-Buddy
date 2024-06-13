import 'package:get/get.dart';

import '../controllers/applied_event_controller.dart';

class AppliedEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppliedEventController>(
      () => AppliedEventController(),
    );
  }
}
