import 'package:algoriza_t1/screens/on_boarding_screen/on_boarding_page_item/on_boarding_page_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pager extends StatelessWidget {
  const Pager({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 425.h,
        child:
            PageView(controller: pageController, children: onBoardingPageItems),
      ),
    );
  }
}
