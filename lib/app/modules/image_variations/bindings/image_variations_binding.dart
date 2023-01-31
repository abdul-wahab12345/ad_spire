import 'package:get/get.dart';

import '../controllers/image_variations_controller.dart';

class ImageVariationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageVariationsController>(
      () => ImageVariationsController(),
    );
  }
}
