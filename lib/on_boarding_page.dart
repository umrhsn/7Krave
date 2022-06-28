import 'package:algoriza_t1/utils/constants.dart';
import 'package:algoriza_t1/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          CustomButton(
            alignment: Alignment.centerRight,
            minWidth: null,
            text: 'Skip',
            height: 55,
            borderRadius: 25,
            textColor: Colors.black,
            fontWeight: FontWeight.normal,
            buttonColor: Constants.kGrey,
            onPressed: () {},
          ),
          CustomButton(
            text: 'Get Started',
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}
