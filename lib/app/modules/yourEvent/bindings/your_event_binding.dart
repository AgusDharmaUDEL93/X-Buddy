import 'package:get/get.dart';

import '../controllers/your_event_controller.dart';

class YourEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourEventController>(
      () => YourEventController(),
    );
  }
}
