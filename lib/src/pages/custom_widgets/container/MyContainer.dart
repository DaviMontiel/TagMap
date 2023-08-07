import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {

  final double? width;
  final double? height;
  final String? text;
  final String? fontFamily;
  final double? textSize;
  final Color? textColor;
  final Color? backgroundColor;
  final FontWeight? fontWeight;
  final double? borderRadius;
  final double padding;


  const MyContainer({
    super.key,
    this.width,
    this.height,
    this.text,
    this.fontFamily,
    this.textSize,
    this.textColor,
    this.backgroundColor,
    this.fontWeight,
    this.borderRadius,
    this.padding = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey[200],
        borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
      ),
      child: text != null
        ? Text(
            text!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: textSize,
              color: textColor,
              fontWeight: fontWeight,
              fontFamily: fontFamily
            ),
          )
        : null,
    );
  }//WID
}//CLASS