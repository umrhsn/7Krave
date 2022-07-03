import 'package:algoriza_t1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: WormEffect(
          dotHeight: 7.h,
          dotWidth: 17.h,
          spacing: 6.h,
          dotColor: kDotLightGrey,
          activeDotColor: kLightOrange),
    ));
  }
}
