import 'package:get/get.dart';

import '../modules/captions/bindings/captions_binding.dart';
import '../modules/captions/views/captions_view.dart';
import '../modules/enabled_notification/bindings/enabled_notification_binding.dart';
import '../modules/enabled_notification/views/enabled_notification_view.dart';
import '../modules/generate_captions/bindings/generate_captions_binding.dart';
import '../modules/generate_captions/views/generate_captions_view.dart';
import '../modules/generate_idea/bindings/generate_idea_binding.dart';
import '../modules/generate_idea/views/generate_idea_view.dart';
import '../modules/get_started/bindings/get_started_binding.dart';
import '../modules/get_started/views/get_started_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/image_ad/bindings/image_ad_binding.dart';
import '../modules/image_ad/views/image_ad_view.dart';
import '../modules/image_generation_que/bindings/image_generation_que_binding.dart';
import '../modules/image_generation_que/views/image_generation_que_view.dart';
import '../modules/image_variations/bindings/image_variations_binding.dart';
import '../modules/image_variations/views/image_variations_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/service/bindings/service_binding.dart';
import '../modules/service/views/service_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/store/bindings/store_binding.dart';
import '../modules/store/views/store_view.dart';
import '../modules/v1/bindings/v1_binding.dart';
import '../modules/v1/views/v1_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

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
    GetPage(
      name: _Paths.STORE,
      page: () => const StoreView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE,
      page: () => const ServiceView(),
      binding: ServiceBinding(),
    ),
    GetPage(
      name: _Paths.V1,
      page: () => const V1View(),
      binding: V1Binding(),
    ),
    GetPage(
      name: _Paths.GENERATE_IDEA,
      page: () => const GenerateIdeaView(),
      binding: GenerateIdeaBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_GENERATION_QUE,
      page: () => const ImageGenerationQueView(),
      binding: ImageGenerationQueBinding(),
    ),
    GetPage(
      name: _Paths.GENERATE_CAPTIONS,
      page: () => const GenerateCaptionsView(),
      binding: GenerateCaptionsBinding(),
    ),
    GetPage(
      name: _Paths.CAPTIONS,
      page: () => const CaptionsView(),
      binding: CaptionsBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_AD,
      page: () => const ImageAdView(),
      binding: ImageAdBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_VARIATIONS,
      page: () => const ImageVariationsView(),
      binding: ImageVariationsBinding(),
    ),
  ];
}
