import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomClipRect extends StatelessWidget {
  final String imagePath;
  const CustomClipRect({
    super.key,
    this.imagePath = 'assets/image/m.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 48.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(56.dg), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.all(4.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(56.dg),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
