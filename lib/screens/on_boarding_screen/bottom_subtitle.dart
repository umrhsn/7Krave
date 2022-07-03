import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSubtitle extends StatelessWidget {
  const BottomSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account? ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp)),
        InkWell(
          onTap: () {},
          child: Text('Sign Up',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                  color: Colors.teal)),
        )
      ],
    );
  }
}
