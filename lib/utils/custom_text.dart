import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String content;
  final double fontsize;
  final Color color;
  final bool is_white;
  final bool is_gilroy;
  final bool is_bold;
  final TextAlign textAlign;

  CustomText({
    super.key,
    required this.content,
    double? fontsize,
    this.color = Colors.black,
    this.is_white = false,
    this.is_gilroy = true,
    this.is_bold = false,
    this.textAlign = TextAlign.center,
  }) : fontsize = fontsize ?? 20;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFontSize = screenWidth < 600
        ? fontsize
        : fontsize * 1.2;

    return Text(
      content,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: is_bold ? FontWeight.w700 : FontWeight.normal,
        fontSize: responsiveFontSize,
        color: is_white ? Colors.white : color,
        fontFamily: is_gilroy ? 'Gilroy' : 'Montserrat',
      ),
    );
  }
}
