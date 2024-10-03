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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: screenHeight * 0.3,
                width: double.infinity,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            // Title and Location
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  content: title,
                  is_bold: true,
                  fontsize: screenWidth * 0.05,
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
                      style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.01),

            // Description
            CustomText(
              content: description,
              textAlign: TextAlign.start,
              fontsize: screenWidth * 0.04,
            ),
            SizedBox(height: screenHeight * 0.01),

            // Recruitment Info
            CustomText(
              content: recruitmentInfo,
              textAlign: TextAlign.start,
              fontsize: screenWidth * 0.04,
            ),
            SizedBox(height: screenHeight * 0.02),

            // Apply Button
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                content: 'Apply Now',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
