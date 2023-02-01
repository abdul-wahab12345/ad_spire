import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/models/ad_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageGenerationQueController extends GetxController {
  //TODO: Implement ImageGenerationQueController

  final textController = TextEditingController();
  final AdTypes typeController = Get.find();

  var isloading = false.obs;
  final imgtypes = <AdType>[].obs;

  @override
  void onInit() {
    super.onInit();
    typeController.loadDemoImgsFromSomeWhere();
  }

  @override
  void onReady() {
    super.onReady();
    imgtypes.addAll(typeController.imgtypes);
  }

  @override
  void onClose() {
    super.onClose();
  }

  void ongenerate() async {
    isloading.value = true;
    Future.delayed(const Duration(seconds: 3)).then((value) {
      isloading.value = false;
      Get.toNamed(Routes.GENERATE_CAPTIONS);
    });
  }
}
