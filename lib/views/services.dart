import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_card.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/fade_image_list.dart';  // Import the FadeImageListView widget

import '../utils/custom_text.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      'lib/assets/elisha.jfif',
      'lib/assets/Kareem.jfif',
      'lib/assets/K.jfif',
      'lib/assets/comm.jfif',
      'lib/assets/m.jfif',
    ];
    return CustomScaffold(
      appbartitle: 'Services',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              content: 'Where We \n Support',
              is_bold: true,
              fontsize: 40,
              color: Colors.blue,
              is_gilroy: false,
            ),
            const SizedBox(height: 20),
            CustomCard(
              image: 'lib/assets/coding.png',
              title: 'Website Design and Development',
              sub_title: 'Unlock your online potential with captivating websites tailored to your unique vision and business needs.',
            ),
            const SizedBox(height: 10),
            CustomCard(
              image: 'lib/assets/briefcase.png',
              title: 'Business Websites',
              sub_title: 'Power up your business with custom-designed websites engineered for success in the digital arena.',
            ),
            const SizedBox(height: 10),
            // Additional CustomCards here ...
            const SizedBox(height: 10),
            CustomCard(
              image: 'lib/assets/crm.png',
              title: 'CRM Solution',
              sub_title: 'Transform your customer relationships and drive business growth with our intuitive CRM solutions.',
            ),
            const SizedBox(height: 20),
            CustomText(
              content: 'Our Consumer',
              fontsize: 30,
              is_bold: true,
              is_gilroy: false,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: FadeImageListView(imagePaths: imagePaths),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
