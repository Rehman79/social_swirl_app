import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_card.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/fade_image_list.dart';
import 'package:social_swirl_app/utils/faq_widget.dart';
import 'package:social_swirl_app/utils/project_list.dart';
import '../utils/custom_text.dart';
import '../utils/getstarted_cont.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive layout
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    List<String> imagePaths = [
      'lib/assets/elisha.jfif',
      'lib/assets/Kareem.jfif',
      'lib/assets/K.jfif',
      'lib/assets/comm.jfif',
      'lib/assets/m.jfif',
    ];
    List<FAQItem> faqitems = [
      FAQItem(
          question: 'What technologies do you use for website development?',
          answer:
          'We specialize in using modern technologies like the MERN stack (MongoDB, Express.js, Reactjs, Nodejs), WordPress, and Elementor to create custom websites tailored to your business needs.'),
      FAQItem(
          question: 'Do you offer SEO services with website development?',
          answer:
          "Yes, we provide comprehensive SEO optimization services to improve your website's visibility on search engines, driving more organic traffic and better rankings."),
      FAQItem(
          question: 'Can you help with digital marketing for my business?',
          answer:
          'Absolutely! Our digital marketing services include crafting and executing campaigns across social media platforms to engage your target audience and boost your online presence.'),
      FAQItem(
          question: 'Do you offer e-commerce solutions?',
          answer:
          'Yes, we develop robust e-commerce websites with secure payment gateways, inventory management, and user-friendly interfaces to help you sell your products online efficiently.'),
    ];

    List<String> imagePathsProject = [
      'lib/assets/Artelisha.jpg',
      'lib/assets/Artdk.jpg',
      'lib/assets/ArtG.jpg',
      'lib/assets/Artloja.jpg',
    ];
    List<String> compName = ['Elisha', 'dk Group', 'Gotrolly', 'Loja'];
    List<String> descr = [
      'Stylish and contemporary clothing collections.',
      'Innovative and essential electric gadgets.',
      'Strategic investment solutions for growth and success.',
      'Fashion-forward western apparel for modern trends.'
    ];

    return CustomScaffold(
      appbartitle: 'Services',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.02),
            Image.asset(
              'lib/assets/swirlbanner.png',
              fit: BoxFit.fitWidth,
              width: screenWidth,
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomText(
              content: 'Where We \n Support',
              is_bold: true,
              fontsize: screenWidth * 0.1,
              is_gilroy: false,
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomCard(
              image: 'lib/assets/coding.png',
              title: 'Website Design and Development',
              sub_title:
              'Unlock your online potential with captivating websites tailored to your unique vision and business needs.',
            ),
            SizedBox(height: screenHeight * 0.01),
            CustomCard(
              image: 'lib/assets/briefcase.png',
              title: 'Business Websites',
              sub_title:
              'Power up your business with custom-designed websites engineered for success in the digital arena.',
            ),
            SizedBox(height: screenHeight * 0.01),
            CustomCard(
              image: 'lib/assets/crm.png',
              title: 'CRM Solution',
              sub_title:
              'Transform your customer relationships and drive business growth with our intuitive CRM solutions.',
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomText(
              content: 'Our Consumer',
              fontsize: screenWidth * 0.075,
              is_bold: true,
              is_gilroy: false,
            ),
            SizedBox(height: screenHeight * 0.015),
            SizedBox(
              height: screenHeight * 0.4,
              child: FadeImageListView(imagePaths: imagePaths),
            ),
            SizedBox(height: screenHeight * 0.015),
            CustomText(
              content: "FAQ's",
              is_bold: true,
              is_gilroy: false,
              fontsize: screenWidth * 0.075,
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              height: screenHeight * 0.4,
              child: FAQWidget(faqItems: faqitems),
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomText(
              content: "Our Projects",
              is_bold: true,
              is_gilroy: false,
              fontsize: screenWidth * 0.075,
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              height: screenHeight * 0.5,
              child: ProjectList(
                imagePaths: imagePathsProject,
                comp_name: compName,
                descr: descr,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            GetstartedCont(),
          ],
        ),
      ),
    );
  }
}
