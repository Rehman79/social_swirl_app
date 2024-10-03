import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text.dart';

class GetstartedCont extends StatelessWidget {
  const GetstartedCont({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Column(
        children: [
          SizedBox(height: screenWidth * 0.05),
          CustomText(
            content: 'Start a Project with us \n Today',
            is_white: true,
            is_bold: true,
            fontsize: screenWidth * 0.06,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: CustomText(
              content:
              'Call us now to schedule an online appointment and get your project successfully completed',
              is_white: true,
              is_gilroy: false,
              fontsize: screenWidth * 0.04,
            ),
          ),
          SizedBox(height: screenWidth * 0.05),
          CustomButton(content: 'Get Started', onTap: () {}),
          SizedBox(height: screenWidth * 0.05),
        ],
      ),
    );
  }
}
