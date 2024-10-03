import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class ExpertCard extends StatelessWidget {
  final String image;
  final String name;
  final String role;

  const ExpertCard({
    super.key,
    required this.image,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isLargeScreen = screenWidth > 600;
    final double cardWidth = isLargeScreen ? screenWidth * 0.25 : 200;
    final avatarRadius = isLargeScreen ? 60.0 : 50.0;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18.0),
      width: cardWidth,
      height: screenHeight* 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
          const SizedBox(height: 20),
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: avatarRadius,
          ),
          const SizedBox(height: 10),
          CustomText(content: name,is_bold: true,),
          const SizedBox(height: 10),
          CustomText(content: role, fontsize: 14),
        ],
      ),
    );
  }
}
