import 'package:get/get.dart';

import '../controllers/generate_captions_controller.dart';

class GenerateCaptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenerateCaptionsController>(
      () => GenerateCaptionsController(),
    );
  }
}
