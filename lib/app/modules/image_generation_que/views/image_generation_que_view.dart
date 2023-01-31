import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/image_generation_que_controller.dart';

class ImageGenerationQueView extends GetView<ImageGenerationQueController> {
  const ImageGenerationQueView({Key? key}) : super(key: key);
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
              'What style do you want your image ad in?',
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
              flex: 4,
              child: Obx(
                () => GridView.builder(
                  // shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 165 / 56,
                  ),
                  itemCount: controller.imgtypes.length,
                  itemBuilder: (context, index) {
                    final color = getRandomColor();
                    return InkWell(
                      onTap: () {},
                      splashColor: color.withOpacity(0.2),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 8.w),
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/img/rect.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            FittedBox(
                              child: Text(
                                controller.imgtypes[index].title,
                                style: TextStyle(
                                  color: darkTextColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextField(
              controller: controller.textController,
              textAlign: TextAlign.justify,
              maxLines: 4,
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
                hintText: 'Ex: In the style of picasso',
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            SubmitButton(
              title: 'No particular style',
              color: Colors.transparent,
              textColor: textColor,
              onPressed: () {},
            ),
            SubmitButton(
              title: 'Generate Image Ads',
              onPressed: () {
                Get.toNamed(Routes.GENERATE_CAPTIONS);
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
