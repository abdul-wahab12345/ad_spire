import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ad_spire/constants.dart';
import 'package:ad_spire/widgets/gradient_text.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24.h,
              ),
              GradientText(
                'Settings',
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
              Text(
                'App',
                style: TextStyle(
                  color: textColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              MenuTile(
                title: 'About App',
                icon: 'assets/svg/info.svg',
                onTap: () {},
              ),
              MenuTile(
                title: 'Contact for Support',
                icon: 'assets/svg/support.svg',
                onTap: () {},
              ),
              MenuTile(
                title: 'Rate Us',
                icon: 'assets/svg/rateus.svg',
                onTap: () {},
              ),
              MenuTile(
                title: 'Share with Friends',
                icon: 'assets/svg/users.svg',
                onTap: () {},
              ),
              SizedBox(
                height: 16.h,
              ),
              const Divider(),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Legal',
                style: TextStyle(
                  color: textColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              MenuTile(
                title: 'Disclaimer',
                icon: 'assets/svg/disclaimer.svg',
                onTap: () {},
              ),
              MenuTile(
                title: 'Terms of Services',
                icon: 'assets/svg/shield.svg',
                onTap: () {},
              ),
              MenuTile(
                title: 'Privacy Policy',
                icon: 'assets/svg/lock.svg',
                onTap: () {},
              ),
              SizedBox(
                height: 16.h,
              ),
              const Divider(),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Legal',
                style: TextStyle(
                  color: textColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              MenuTile(
                title: 'Restore Purchase',
                icon: 'assets/svg/rotate.svg',
                onTap: () {},
              ),
              MenuTile(
                title: 'Logout',
                icon: 'assets/svg/logout.svg',
                onTap: () {},
              ),
              MenuTile(
                title: 'Delete Account',
                icon: 'assets/svg/delete.svg',
                onTap: () {},
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 8.h),
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 24.w,
              height: 24.h,
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
