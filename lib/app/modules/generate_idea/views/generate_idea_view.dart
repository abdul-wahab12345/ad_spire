import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/generate_idea_controller.dart';

class GenerateIdeaView extends GetView<GenerateIdeaController> {
  const GenerateIdeaView({Key? key}) : super(key: key);
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
              'Here are some ad ideas I thought of:',
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
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  final color = getRandomColor();
                  return Container(
                    margin: EdgeInsets.only(bottom: 16.h),
                    padding: EdgeInsets.symmetric(
                      vertical: 13.h,
                      horizontal: 12.w,
                    ),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'ad idea ',
                      style: TextStyle(
                        color: darkTextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
            SubmitButton(
              title: 'Generate more',
              onPressed: () {
                Get.toNamed(Routes.IMAGE_GENERATION_QUE);
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
