import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/image_variations_controller.dart';

class ImageVariationsView extends GetView<ImageVariationsController> {
  const ImageVariationsView({Key? key}) : super(key: key);
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
              'Variation',
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
            Expanded(
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
                    onTap: () {
                      Get.toNamed(Routes.SETTINGS);
                    },
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
              height: 60.h,
            ),
          ],
        ),
      ),
    );
  }
}
