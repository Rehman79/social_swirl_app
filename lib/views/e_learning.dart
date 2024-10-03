import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class ELearning extends StatelessWidget {
  const ELearning({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return CustomScaffold(
      is_scroll: false,
      appbartitle: 'Learning',
      child: Container(
        height: screenHeight,
        width: double.infinity,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                  ),
                  child: CustomText(
                    content: 'Coming\nSoon',
                    is_gilroy: false,
                    color: Colors.blue,
                    fontsize: screenWidth * 0.1,
                    is_bold: true,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
