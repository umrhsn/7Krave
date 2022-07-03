import 'package:algoriza_t1/constants.dart';
import 'package:algoriza_t1/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      alignment: Alignment.centerRight,
      minWidth: null,
      innerPadding: EdgeInsets.all(15.h),
      text: 'Skip',
      height: 40.h,
      borderRadius: 25.h,
      textColor: Colors.black,
      buttonColor: kButtonLightGrey,
      onPressed: () {},
    );
  }
}
