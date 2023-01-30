import 'package:get/get.dart';

import '../controllers/enabled_notification_controller.dart';

class EnabledNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnabledNotificationController>(
      () => EnabledNotificationController(),
    );
  }
}
