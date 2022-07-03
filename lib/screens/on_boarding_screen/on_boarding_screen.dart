import 'package:algoriza_t1/screens/on_boarding_screen/pager/page_indicator.dart';
import 'package:algoriza_t1/screens/on_boarding_screen/pager/pager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottom_subtitle.dart';
import 'buttons/get_started_button.dart';
import 'buttons/skip_button.dart';
import 'logo.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SkipButton(),
                const Spacer(),
                const Logo(),
                Pager(pageController: pageController),
                const Spacer(),
                PageIndicator(pageController: pageController),
                const Spacer(flex: 2),
                const GetStartedButton(),
                SizedBox(height: 5.h),
                const BottomSubtitle(),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
