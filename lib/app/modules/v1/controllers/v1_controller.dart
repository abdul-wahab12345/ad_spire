import 'package:ad_spire/models/ad_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class V1Controller extends GetxController {

  final textController = TextEditingController();
  final typeController = Get.put(AdTypes());

  final types = <AdType>[].obs;
  @override
  void onInit() {
    super.onInit();
    typeController.loadDemoPkgsFromSomeWhere();
  }

  @override
  void onReady() {
    super.onReady();
    types.addAll(typeController.types);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
