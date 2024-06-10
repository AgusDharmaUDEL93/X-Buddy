import 'package:get/get.dart';

import '../controllers/discussion_controller.dart';

class DiscussionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscussionController>(
      () => DiscussionController(),
    );
  }
}
