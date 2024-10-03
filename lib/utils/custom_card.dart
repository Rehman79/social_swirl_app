import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_button.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String title;
  final String sub_title;

  CustomCard({
    Key? key,
    required this.image,
    required this.title,
    required this.sub_title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardWidth = size.width * 0.95;
    final double imageScale = size.width > 600 ? 4 : 5;
    final titleFontSize = size.width * 0.05;
    final subtitleFontSize = size.width * 0.04;

    return Center(
      child: Container(
        width: cardWidth,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image,
                scale: imageScale,
              ),
              const SizedBox(height: 16),
              CustomText(
                content: title,
                is_bold: true,
                fontsize: titleFontSize,
              ),
              const SizedBox(height: 10),
              CustomText(
                content: sub_title,
                fontsize: subtitleFontSize,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(content: 'Get a Quote', onTap: () {}),
                  SizedBox(width: 10,),
                  CustomButton(content: 'Read More', onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
