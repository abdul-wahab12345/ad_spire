import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "AdSpire",
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
        fontFamily: 'GeneralSans'
      ),
      getPages: AppPages.routes,
    ),
  );
}
