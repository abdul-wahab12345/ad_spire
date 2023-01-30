
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';
import 'package:ad_spire/widgets/submit_button.dart';

import 'package:ad_spire/app/routes/app_pages.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
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
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Welcome to',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 12.h,
                ),
                GradientText(
                  'ADSPIRE',
                  style: TextStyle(
                    fontFamily: 'Druk Wide',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  gradient: gradient,
                ),
                const Spacer(),
                SizedBox(
                  width: 237.w,
                  child: Column(
                    children: [
                      Text(
                        'As a thank you for trying us, we are giving you',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset('assets/img/logo.png'),
                          Positioned(
                            top: -15,
                            right: -35,
                            child: SvgPicture.asset('assets/svg/sparkle.svg'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        'Free Ad Credits!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Ad Credits',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                ..shader = gradient.createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0),
                                ),
                            ),
                          ),
                          TextSpan(
                            text: ' are used to generate ads.',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                SubmitButton(
                  title: 'Next',
                  onPressed: () {
                    Get.toNamed(Routes.GET_STARTED);
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
