import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_button.dart';

import 'custom_text.dart';

class CareerCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String description;
  final String recruitmentInfo;

  const CareerCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.description,
    required this.recruitmentInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  content: title,
                  is_bold: true,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Description
            CustomText(
              content: description,
              textAlign: TextAlign.start,
              fontsize: 16,
            ),
            const SizedBox(height: 8),

            // Recruitment Info
            CustomText(
              content: recruitmentInfo,
              textAlign: TextAlign.start,
              fontsize: 16,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: CustomButton(content: 'Apply Now', onTap: (){})
            ),
          ],
        ),
      ),
    );
  }
}
