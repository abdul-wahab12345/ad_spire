import 'package:ad_spire/size_config.dart';
import 'package:ad_spire/widgets/gradient_text.dart';
import 'package:ad_spire/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:ad_spire/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: getHeight(24),
                ),
                const Text(
                  'Welcome to',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: getHeight(12),
                ),
                const GradientText(
                  'ADSPIRE',
                  style: TextStyle(
                    fontFamily: 'Druk Wide',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  gradient: gradient,
                ),
                Spacer(),
                Container(
                  width: getWidth(237),
                  child: Column(
                    children: [
                      const Text(
                        'As a thank you for trying us, we are giving you',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(32),
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
                        height: getHeight(12),
                      ),
                      const Text(
                        'Free Ad Credits!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(12),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Ad Credits',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                ..shader = gradient.createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0),
                                ),
                            ),
                          ),
                          const TextSpan(
                            text: ' are used to generate ads.',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                Spacer(),
                SubmitButton(title: 'Next', onPressed: (){},color: Colors.white,),
                SizedBox(
                  height: getHeight(32),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
