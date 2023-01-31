import 'package:get/get.dart';

import '../controllers/image_generation_que_controller.dart';

class ImageGenerationQueBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageGenerationQueController>(
      () => ImageGenerationQueController(),
    );
  }
}
