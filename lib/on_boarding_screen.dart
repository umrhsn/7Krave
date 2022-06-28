import 'package:algoriza_t1/utils/models/on_boarding_page_item.dart';
import 'package:algoriza_t1/utils/constants.dart';
import 'package:algoriza_t1/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomButton(
                alignment: Alignment.centerRight,
                minWidth: null,
                outerPadding: const EdgeInsets.only(
                    top: 20, left: 20, bottom: 20, right: 15),
                text: 'Skip',
                height: 55,
                borderRadius: 25,
                textColor: Colors.black,
                buttonColor: Constants.kButtonLightGrey,
                onPressed: () {},
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 140),
                  child: Image.asset('assets/logo/logo_seven_krave.png'),
                ),
              )
            ],
          ),
          Flexible(
            child: PageView(
              controller: pageController,
              children: const [
                OnBoardingPageItem(
                  assetImagePath: 'assets/images/sammy_bicycle.png',
                  leadingMessage: 'Get food delivery to your doorstep asap',
                  descriptionMessage:
                      'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
                ),
                OnBoardingPageItem(
                  assetImagePath: 'assets/images/sammy_done.png',
                  leadingMessage: 'Buy Any Food from your favorite restaurant',
                  descriptionMessage:
                      'We are constantly adding your favorite restaurant throughout the territory and around your area carefully selected',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Center(
                child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 18,
                  dotColor: Constants.kDotLightGrey,
                  activeDotColor: Constants.kLightOrange),
            )),
          ),
          Column(
            children: [
              CustomButton(
                text: 'Get Started',
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account? ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                    InkWell(
                      onTap: () {},
                      child: const Text('Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.teal)),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
