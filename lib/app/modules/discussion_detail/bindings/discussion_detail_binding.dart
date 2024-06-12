import 'package:get/get.dart';

import '../controllers/discussion_detail_controller.dart';

class DiscussionDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscussionDetailController>(
      () => DiscussionDetailController(),
    );
  }
}
