import 'package:flutter/cupertino.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import '../utils/career_card.dart';

class OpenPosition extends StatelessWidget {
  const OpenPosition({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return CustomScaffold(
      appbartitle: 'Open Position',
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 10.0 : 20.0,
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              CareerCard(
                imagePath: 'lib/assets/frontend.jpg',
                title: 'Frontend Development',
                location: 'Lahore',
                description: 'Create responsive and interactive web designs.',
                recruitmentInfo: 'This job represented by DK Recruitment',
              ),
              const SizedBox(height: 10),
              CareerCard(
                imagePath: 'lib/assets/backend.jpg',
                title: 'Backend Development',
                location: 'Lahore',
                description: 'Build and maintain server-side applications.',
                recruitmentInfo: 'This job represented by DK Recruitment',
              ),
              const SizedBox(height: 10),
              CareerCard(
                imagePath: 'lib/assets/fullstackup.jpg',
                title: 'Full Stack Developer',
                location: 'Lahore',
                description: 'Develop and manage both front and back-end web solutions.',
                recruitmentInfo: 'This job represented by DK Recruitment',
              ),
              const SizedBox(height: 10),
              CareerCard(
                imagePath: 'lib/assets/graphic.jpg',
                title: 'Graphic Designer',
                location: 'Lahore',
                description: 'Design visually compelling graphics and layouts.',
                recruitmentInfo: 'This job represented by DK Recruitment',
              ),
              const SizedBox(height: 10),
              CareerCard(
                imagePath: 'lib/assets/seoopt.jpg',
                title: 'SEO Expert',
                location: 'Lahore',
                description: 'Optimize websites to improve search engine rankings.',
                recruitmentInfo: 'This job represented by DK Recruitment',
              ),
              const SizedBox(height: 10),
              CareerCard(
                imagePath: 'lib/assets/ssm.jpg',
                title: 'Social Media Marketer',
                location: 'Lahore',
                description: 'Manage and strategize social media and campaigns.',
                recruitmentInfo: 'This job represented by DK Recruitment',
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
