import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';

import '../controllers/generate_captions_controller.dart';

class GenerateCaptionsView extends GetView<GenerateCaptionsController> {
  const GenerateCaptionsView({Key? key}) : super(key: key);
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
              'Here are some image ads I made using the idea: ',
              style: TextStyle(
                fontFamily: 'Druk Wide',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              gradient: gradient,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Lady holding a bag looking at her phone',
              style: TextStyle(
                color: textColor.withOpacity(0.8),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              flex: 6,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  final color = getRandomColor();
                  return InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/img/angle.png',
                        height: 160,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SubmitButton(
              title: 'Generate Captions',
              onPressed: () {
                Get.toNamed(Routes.CAPTIONS);
              },
            ),
            SizedBox(
              height: 24.h,
            ),
            const Text(
              'You may use these images as inspiration, a base/part of your ad, or even the final ad, 100% commercially!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
