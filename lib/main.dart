import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context,child) {
        return GetMaterialApp(
          title: "AdSpire",
          initialRoute: AppPages.INITIAL,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'GeneralSans'
          ),
          getPages: AppPages.routes,
        );
      }
    ),
  );
}
