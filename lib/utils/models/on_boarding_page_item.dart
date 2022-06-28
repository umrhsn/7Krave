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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Image(image: AssetImage(assetImagePath)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: Center(
              child: Text(
            leadingMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              descriptionMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.grey),
            ),
          )),
        )
      ],
    );
  }
}
