import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';

import '../controllers/service_controller.dart';

class ServiceView extends GetView<ServiceController> {
  const ServiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
            ),
            const GradientText(
              'What is your product, service or business?',
              style: TextStyle(
                fontFamily: 'Druk Wide',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              gradient: gradient,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextField(
              controller: controller.textController,
              textAlign: TextAlign.justify,
              maxLines: 8,
              style: TextStyle(
                  color: textColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                fillColor: const Color.fromRGBO(79, 79, 79, 1),
                filled: true,
                hintStyle: TextStyle(
                  color: textColor.withOpacity(0.5),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                hintText: 'Be as specific or broad as you’d like...',
              ),
            ),
            const Spacer(),
            SubmitButton(
              title: 'Generate my own idea',
              color: Colors.transparent,
              textColor: textColor,
              onPressed: () {},
            ),
            SubmitButton(
              title: 'Next',
              onPressed: () {
                Get.toNamed(Routes.V1);
              },
            ),
            SizedBox(
              height: 32.h,
            ),
          ],
        ),
      ),
    );
  }
}
