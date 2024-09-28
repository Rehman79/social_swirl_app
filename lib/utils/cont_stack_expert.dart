
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/service_card.dart';

class ContStackExpert extends StatelessWidget {
  const ContStackExpert({super.key});

  @override
  Widget build(BuildContext context) {
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
            width: MediaQuery.of(context).size.width,
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
          top: 55,
          height: 210,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ServiceCard(
                imagePath: 'lib/assets/bullhorn.png',
                serviceName: 'Digital Marketing',
                description:
                'Expand your digital footprint and connect with your target audience through strategic digital marketing campaigns.',
              ),

              ServiceCard(
                imagePath: 'lib/assets/coding.png',
                serviceName: 'Web Development',
                description:
                'Build responsive and dynamic websites to ensure a great user experience across all devices.',
              ),
              ServiceCard(
                imagePath: 'lib/assets/optimization.png',
                serviceName: 'SEO Optimization',
                description:
                'Improve your search engine rankings and visibility to drive more organic traffic to your site.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
