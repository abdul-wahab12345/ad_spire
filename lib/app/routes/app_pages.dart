import 'package:get/get.dart';

import '../modules/home/views/home_view.dart';
import '../modules/login/views/login_view.dart';
import '../modules/welcome/views/welcome_view.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/get_started/views/get_started_view.dart';
import '../modules/enabled_notification/views/enabled_notification_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/get_started/bindings/get_started_binding.dart';
import '../modules/enabled_notification/bindings/enabled_notification_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SETTINGS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => const GetStartedView(),
      binding: GetStartedBinding(),
    ),
    GetPage(
      name: _Paths.ENABLED_NOTIFICATION,
      page: () => const EnabledNotificationView(),
      binding: EnabledNotificationBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
