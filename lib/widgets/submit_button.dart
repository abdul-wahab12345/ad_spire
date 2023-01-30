import 'package:ad_spire/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? textSize;
  final Gradient? gradient;
  final double? height;
  final double? width;

  const SubmitButton({
    Key? key,
    required this.title,
    this.color,
    required this.onPressed,
    this.height,
    this.width,
    this.gradient,
    this.textSize,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ?? 48.h,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: gradient,
          color: color ?? Colors.white,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: textColor ?? Color.fromRGBO(11, 11, 11, 1),
            fontWeight: FontWeight.w600,
            fontSize: textSize ?? 16,
          ),
        ),
      ),
    );
  }
}
