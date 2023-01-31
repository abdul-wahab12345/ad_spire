import 'package:get/get.dart';

import '../controllers/image_ad_controller.dart';

class ImageAdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageAdController>(
      () => ImageAdController(),
    );
  }
}
