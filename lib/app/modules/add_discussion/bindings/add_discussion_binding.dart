import 'package:get/get.dart';

import '../controllers/add_discussion_controller.dart';

class AddDiscussionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddDiscussionController>(
      () => AddDiscussionController(),
    );
  }
}
