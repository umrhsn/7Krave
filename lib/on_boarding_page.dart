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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            alignment: Alignment.centerRight,
            minWidth: null,
            text: 'Skip',
            height: 55,
            borderRadius: 25,
            textColor: Colors.black,
            buttonColor: Constants.kGrey,
            onPressed: () {},
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: Image.asset('assets/logo/logo_seven_krave.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child:
                    Image(image: AssetImage('assets/images/sammy_bicycle.png')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                    child: Text(
                  'Get food delivery to your doorstep asap',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.grey),
                  ),
                )),
              )
            ],
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
