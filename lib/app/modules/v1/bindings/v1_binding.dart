import 'package:get/get.dart';

import '../controllers/v1_controller.dart';

class V1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<V1Controller>(
      () => V1Controller(),
    );
  }
}
