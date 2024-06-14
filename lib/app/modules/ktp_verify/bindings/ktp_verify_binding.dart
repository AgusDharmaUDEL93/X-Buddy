import 'package:get/get.dart';

import '../controllers/ktp_verify_controller.dart';

class KtpVerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KtpVerifyController>(
      () => KtpVerifyController(),
    );
  }
}
