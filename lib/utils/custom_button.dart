import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,required this.content,required this.onTap});
 final String content;
 final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue,
              Colors.blue[900]!,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
      borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: CustomText(content: content,is_white: true,fontsize: 16,)),
      ),
    );
  }
}
