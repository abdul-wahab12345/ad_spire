import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:ad_spire/widgets/gradient_text.dart';

import '../controllers/enabled_notification_controller.dart';

class EnabledNotificationView extends GetView<EnabledNotificationController> {
  const EnabledNotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Center(
            child: Column(
              children: [
                const Spacer(),
                Image.asset('assets/img/bell.png'),
                SizedBox(
                  height: 16.h,
                ),
                GradientText(
                  'ENABLE NOTIFICATIONS',
                  gradient: gradient,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: 'Druk Wide',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.w),
                  child: Text(
                    'We are constantly adding new tools to make better ads.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Give us permission to send you notifications. (we don’t bug you much, don’t worry)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SubmitButton(
                  title: 'Continue',
                  onPressed: () {
                    Get.toNamed(Routes.STORE);
                  },
                  color: Colors.white,
                ),
                SizedBox(
                  height: 32.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
