import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';
import 'package:ad_spire/widgets/submit_button.dart';

import 'package:ad_spire/app/routes/app_pages.dart';
import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Column(
        children: [
          Stack(children: [
            Image.asset(
              'assets/img/background.png',
              width: double.infinity,
              height: 560.h,
              fit: BoxFit.cover,
            ),
            const FadeEndListView(),
          ]),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  const Spacer(),
                  GradientText(
                    'THE WORLD\'S MOST POWERFUL AL HELPING MAKE THE BEST ADS FOR YOUR BUSINESS!',
                    gradient: gradient,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Druk Wide',
                        fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  SubmitButton(
                    title: 'Let\'s Start',
                    onPressed: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FadeEndListView extends StatelessWidget {
  const FadeEndListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -1,
      left: 0,
      right: 0,
      height: 100.h,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1.0],
            colors: [
              Color.fromRGBO(0, 0, 0, 0.0),
              Color.fromRGBO(0, 0, 0, 1),
            ],
          ),
        ),
      ),
    );
  }
}
