import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  final count = 0.obs;
  var isLogin = true.obs;
  var isVerify = false.obs;

  void IsLogin() => isLogin;
  void IsVerify() => isVerify;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
