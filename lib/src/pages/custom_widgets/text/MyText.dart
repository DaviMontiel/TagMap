import 'package:flutter/material.dart';

class MyText extends StatefulWidget {

  final String text;
  final double? fontSize;
  final Color? fontColor;
  final String? fontFamily;
  final TextAlign? textAlign;
  final bool bold;
  final double? lineSpacing;


  const MyText(
    this.text,
    {
      super.key,
      this.fontSize,
      this.fontColor,
      this.fontFamily,
      this.textAlign,
      this.bold = false,
      this.lineSpacing
    }
  );

  @override
  State<MyText> createState() => _MyTextState();
}//CLASS

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        fontFamily: widget.fontFamily,
        fontSize: widget.fontSize,
        color: widget.fontColor,
        fontWeight: widget.bold ? FontWeight.bold : null,
        height: widget.lineSpacing
      ),
    );
  }//WID
}//CLASS