import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/image_ad_controller.dart';

class ImageAdView extends GetView<ImageAdController> {
  const ImageAdView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/img/angle.png',
                      width: double.infinity,
                      height: 336,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/svg/download.svg'),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Download',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/svg/share.svg'),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Share',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/svg/add.svg'),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Start new ad',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 81.h,
                  ),
                  SubmitButton(
                    title: 'Generate Variations',
                    onPressed: () {
                      Get.toNamed(Routes.IMAGE_VARIATIONS);
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SubmitButton(
                    title: 'Generate Captions',
                    color: Colors.transparent,
                    borderColor: textColor,
                    textColor: textColor,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SubmitButton(
                    title: 'See Ad Ideas',
                    color: Colors.transparent,
                    textColor: textColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
