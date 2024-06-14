import 'package:get/get.dart';

import '../controllers/open_verify_controller.dart';

class OpenVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OpenVerifyController>(
      () => OpenVerifyController(),
    );
  }
}
