import 'package:get/get.dart';
import 'package:x_buddy/app/data/model/post.dart';

class DiscussionDetailController extends GetxController {
  var isLoading = false.obs;
  String? errorMessage;

  late Post post;

  @override
  void onInit() {
    super.onInit();
    isLoading.value = true;

    post = Get.arguments();

    isLoading.value = false;
  }
}
