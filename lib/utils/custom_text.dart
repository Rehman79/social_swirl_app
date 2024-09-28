import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String content;
  double fontsize;
  Color color;
  bool is_white;
  bool is_gilroy;
  bool is_bold;
  TextAlign textAlign;
  CustomText(
      {super.key,
      required this.content,
      this.fontsize = 20,
      this.color = Colors.black,
      this.is_white=false,
      this.is_gilroy=true,
      this.is_bold=false,
      this.textAlign=TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: is_bold?FontWeight.w700:FontWeight.normal,
        fontSize: fontsize,
        color: is_white?Colors.white:color,
        fontFamily: is_gilroy?'Gilroy':'Montserrat',
      ),
    );
  }
}
