import 'package:ad_spire/app/routes/app_pages.dart';
import 'package:ad_spire/models/credit_package.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';

import '../controllers/store_controller.dart';

class StoreView extends GetView<StoreController> {
  const StoreView({Key? key}) : super(key: key);
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
            GradientText(
              'Store',
              style: TextStyle(
                fontFamily: 'Druk Wide',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
              gradient: gradient,
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: Obx(
                () => InkWell(
                 onTap: () => Get.toNamed(Routes.SERVICE),
                  child: ListView.builder(
                    itemCount: controller.pkgs.length,
                    itemBuilder: (context, index) {
                     return StoreItem(pkg: controller.pkgs[index]);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoreItem extends StatelessWidget {
  final CreditPackage pkg;
  const StoreItem({required this.pkg, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(
          width: pkg.isBest ? 3 : 0,
          color: pkg.isBest ? const Color.fromRGBO(198, 60, 249, 1) : Colors.white,
        ),
        gradient: !pkg.isBest
            ? null
            : const LinearGradient(colors: [
                Color.fromRGBO(198, 60, 249, .2),
                Color.fromRGBO(50, 209, 233, .2),
              ]),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GradientText(
                    pkg.creditsCount,
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    gradient: gradient,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  if (pkg.isBest)
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 197, 85, 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Best deal',
                        style: TextStyle(
                          color: const Color.fromRGBO(33, 33, 33, 1),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Ad Credits',
                style: TextStyle(
                  color: pkg.isBest ? textColor : darkTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  pkg.price,
                  style: TextStyle(
                    color: pkg.isBest ? textColor : darkTextColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  '\$0.50/Credits',
                  style: TextStyle(
                    color: pkg.isBest ? textColor : darkTextColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
