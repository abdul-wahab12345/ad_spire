import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CaptionsController extends GetxController {
 

  
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void ongenerate() async {
    Get.bottomSheet(
      Padding(
        padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 32.h),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            width: 81,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(92, 92, 92, 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 32.h),
            child: const Text(
              'Do you want to generate 5 more captions for 1 more ad credit?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: SubmitButton(
                title: 'No',
                borderColor: textColor,
                color: Colors.transparent,
                textColor: textColor,
                onPressed: () {
                  Get.back();
                },
              )),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                  child: SubmitButton(
                title: 'Yes',
                onPressed: () {
                  Get.back();
                   Get.toNamed(Routes.IMAGE_AD);
                },
              )),
            ],
          )
        ]),
      ),
      backgroundColor: backgroundColor,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
    );
  }
}
