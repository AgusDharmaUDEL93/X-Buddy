import 'package:get/get.dart';

import '../controllers/add_event_controller.dart';

class AddEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddEventController>(
      () => AddEventController(),
    );
  }
}
