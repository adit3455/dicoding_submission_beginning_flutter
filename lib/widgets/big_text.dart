import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  const BigText(
      {this.fontWeight, required this.text, this.color, this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black,
          fontSize: size?.sp ?? 20.sp),
    );
  }
}
