import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/expert_card.dart';

class ContStackExpert extends StatelessWidget {
  const ContStackExpert({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.transparent,
        ),
        Positioned(
          top: 80,
          child: Container(
            width: size.width,
            height: 150,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.lightBlueAccent,
                  Colors.blueAccent,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        Positioned(
          top: 50,
          height: size.height * 0.25,
          width: size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ExpertCard(
                  image: 'lib/assets/zaidsmm.jpg',
                  name: 'Zaid',
                  role: 'Social Media Marketer'),
              ExpertCard(
                  image: 'lib/assets/awaispng.jpg',
                  name: 'Awais',
                  role: 'Senior SEO Developer'),
              ExpertCard(
                  image: 'lib/assets/saleswirl.png',
                  name: 'Muaaz',
                  role: 'Sales Executive'),
              ExpertCard(
                  image: 'lib/assets/mernswirl.webp',
                  name: 'Farrukh',
                  role: 'MERN Stack Developer'),
              ExpertCard(
                  image: 'lib/assets/abdullahsmm.png',
                  name: 'Abdullah',
                  role: 'Digital Marketer'),
              ExpertCard(
                  image: 'lib/assets/hammaddesign.jpg',
                  name: 'Hammad',
                  role: 'Graphic Designer'),
            ],
          ),
        ),
      ],
    );
  }
}
