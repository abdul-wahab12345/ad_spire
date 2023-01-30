import 'package:ad_spire/app/modules/get_started/views/get_started_view.dart';
import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Image.asset(
              'assets/img/background.png',
              width: double.infinity,
              height: 560.h,
              fit: BoxFit.cover,
            ),
            const FadeEndListView(),
            Positioned(
              bottom: -210.h,
              right: 8,
              left: 8,
              child: Column(
                children: [
                  Button(
                    title: 'Continue with Apple',
                    icon: 'assets/svg/apple.svg',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Button(
                    title: 'Login with Google',
                    icon: 'assets/svg/google.svg',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'By continuing, you agree with our Privacy Policy & Terms of use.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: textColor.withOpacity(0.8)),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextButton(
                    child: const Text(
                      'Skip for now',
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onPressed;

  const Button({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 48.h,
        width: 343.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color.fromRGBO(11, 11, 11, 1),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
