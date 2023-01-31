import 'package:get/get.dart';

import '../controllers/generate_idea_controller.dart';

class GenerateIdeaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenerateIdeaController>(
      () => GenerateIdeaController(),
    );
  }
}
