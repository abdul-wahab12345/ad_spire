import 'package:get/get.dart';

import '../controllers/captions_controller.dart';

class CaptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaptionsController>(
      () => CaptionsController(),
    );
  }
}
