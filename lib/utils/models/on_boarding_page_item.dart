import 'package:flutter/material.dart';

// TODO: declare more fields with default values to make it more reusable

class OnBoardingPageItem extends StatelessWidget {
  final String assetImagePath;
  final String leadingMessage;
  final String descriptionMessage;

  const OnBoardingPageItem(
      {Key? key,
      required this.assetImagePath,
      required this.leadingMessage,
      required this.descriptionMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(assetImagePath),
          height: height * 0.43,
        ),
        Center(
            child: Text(
          leadingMessage,
          textAlign: TextAlign.center,
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: height * 0.035),
        )),
        SizedBox(height: 10),
        Center(
            child: Text(
          descriptionMessage,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: height * 0.024,
              color: Colors.grey),
        )),
      ],
    );
  }
}
