import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/service_card.dart';

class ContStackServices extends StatelessWidget {
  const ContStackServices({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.4,
          color: Colors.transparent,
        ),
        Positioned(
          top: size.height * 0.1,
          child: Container(
            width: size.width,
            height: size.height * 0.15,
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
          top: size.height * 0.045,
          height: size.height * 0.29,
          width: size.width,
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
