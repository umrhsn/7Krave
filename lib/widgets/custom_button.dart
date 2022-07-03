import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Alignment alignment;
  final EdgeInsetsGeometry outerPadding;
  final EdgeInsetsGeometry innerPadding;
  final double height;
  final double? minWidth;
  final double elevation;
  final double borderRadius;
  final FontWeight fontWeight;
  final Color buttonColor;
  final Color textColor;
  final String text;
  final Function onPressed;
  final bool isCapitalized;

  const CustomButton({
    Key? key,
    this.alignment = Alignment.center,
    this.outerPadding = EdgeInsets.zero,
    this.innerPadding = EdgeInsets.zero,
    required this.height,
    this.minWidth = double
        .infinity, // set to 0 to wrap content, set to null to have the default width
    this.elevation = 0,
    this.borderRadius = 12.0,
    this.fontWeight = FontWeight.bold,
    this.buttonColor = Colors.teal,
    this.textColor = Colors.white,
    required this.text,
    required this.onPressed,
    this.isCapitalized = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: MaterialButton(
          height: height,
          minWidth: minWidth,
          padding: innerPadding,
          onPressed: () {
            onPressed;
          },
          elevation: elevation,
          color: buttonColor,
          child: Text(isCapitalized ? text.toUpperCase() : text,
              style: TextStyle(
                  fontSize: 16.sp, fontWeight: fontWeight, color: textColor)),
        ),
      ),
    );
  }
}
