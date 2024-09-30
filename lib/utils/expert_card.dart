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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18.0),
      width: 200,
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
            radius: 50,
          ),
          const SizedBox(height: 10),
          CustomText(content: name),
          const SizedBox(height: 10),
          CustomText(content: role, is_gilroy: false, fontsize: 14),
        ],
      ),
    );
  }
}
