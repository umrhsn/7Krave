import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const OnBoardingPageItem(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(imagePath),
          height: 270.h,
        ),
        Center(
            child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
        )),
        SizedBox(height: 10.h),
        Center(
            child: Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15.sp, color: Colors.grey),
        )),
      ],
    );
  }
}
