import 'package:ad_spire/models/ad_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageGenerationQueController extends GetxController {
  //TODO: Implement ImageGenerationQueController

  final textController = TextEditingController();
 final AdTypes typeController = Get.find();

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
}
