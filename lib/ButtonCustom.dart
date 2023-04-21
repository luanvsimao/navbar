import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonCustom extends StatelessWidget {
  final VoidCallback onPressed;

  final String text;
  final Color textColor;
  final double textFontSize;
  final FontWeight textFontWeight;

  final double height;
  final double elevation;
  final double borderRadius;

  final String size; // sm - md - lg

  final bool outline;
  final Color borderColor;
  final Color buttonColor;

  ButtonCustom({
    required this.onPressed,
    required this.text,
    this.textColor = Colors.white,
    this.textFontSize = 18,
    this.textFontWeight = FontWeight.w900,
    this.height = 50,
    this.elevation = 0,
    this.borderRadius = 30,
    this.size = 'lg',
    this.outline = false,
    this.borderColor = Colors.red,
    this.buttonColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double width;

    switch (size) {
      case 'sm':
        width = screenWidth * 0.4;
        break;
      case 'md':
        width = screenWidth * 0.6;
        break;
      case 'lg':
      default:
        width = double.infinity;
        break;
    }

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: outline ? BorderSide(color: borderColor) : BorderSide.none,
            ),
            elevation: elevation,
            backgroundColor: outline ? Colors.transparent : buttonColor,
            padding: EdgeInsets.all(20)),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textFontSize,
            fontWeight: textFontWeight,
          ),
        ),
      ),
    );
  }
}
