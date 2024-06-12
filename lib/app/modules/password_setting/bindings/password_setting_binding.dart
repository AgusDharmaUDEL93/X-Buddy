import 'package:get/get.dart';

import '../controllers/password_setting_controller.dart';

class PasswordSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordSettingController>(
      () => PasswordSettingController(),
    );
  }
}
