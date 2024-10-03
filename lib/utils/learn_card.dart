import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class LearnCard extends StatelessWidget {
  LearnCard({super.key, required this.icon, required this.heading, required this.descr});
  final String icon;
  final String heading;
  final String descr;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.03),
          Image.asset(
            icon,
            height: width * 0.12,
            width: width * 0.12,
            color: Colors.blue,
          ),
          SizedBox(height: height * 0.02),
          CustomText(
            content: heading,
            is_bold: true,
            fontsize: width * 0.05,
          ),
          SizedBox(height: height * 0.02),
          CustomText(
            content: descr,
            is_gilroy: false,
            fontsize: width * 0.04,
          ),
          SizedBox(height: height * 0.03),
        ],
      ),
    );
  }
}
