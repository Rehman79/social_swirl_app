import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return CustomScaffold(
      appbartitle: 'About Us',
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'lib/assets/one.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomText(
              content: 'From Where We Start',
              is_bold: true,
              fontsize: screenWidth * 0.08,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: CustomText(
                content:
                "Social Swirl, founded by Danial Khan in 2022, is a dynamic software company based in the United Kingdom. Specializing in innovative software and media solutions, we focus on new creations to help businesses and individuals optimize their online presence and achieve their goals. Our mission is to provide high-quality, personalized, reliable, and affordable services. With an experienced team dedicated to excellence, we aim to build lasting client relationships based on trust, transparency, and open communication.",
                fontsize: screenWidth * 0.045,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                'lib/assets/sa.png',
                fit: BoxFit.cover,
              ),
              radius: screenWidth * 0.2,
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomText(
              content: 'Message From\nCEO',
              is_bold: true,
              is_gilroy: false,
              color: Colors.blue,
              fontsize: screenWidth * 0.09,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: CustomText(
                content:
                "The company's mission is to provide high-quality software solutions and media that help businesses and individuals optimize their online presence and achieve their goals. With a team of experienced professionals and a commitment to excellence, Social Swirl is dedicated to providing personalized, reliable, and affordable services to its clients.\nAIMS: Our mission is to provide high-quality software solutions and media services that help businesses and individuals optimize their online presence and achieve their goals.",
                fontsize: screenWidth * 0.045,
              ),
            ),
            SizedBox(height: screenHeight * 0.06),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: Image.asset(
                            'lib/assets/sa.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(content: 'Legal', is_bold: true, fontsize: 20),
                              SizedBox(height: 5),
                              CustomText(content: 'Privacy Policy', color: Colors.grey, fontsize: 15),
                              CustomText(content: 'Licensing', color: Colors.grey, fontsize: 15),
                              CustomText(content: 'Terms & conditions', color: Colors.grey, fontsize: 15),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(content: 'Social Media', is_bold: true, fontsize: 20),
                        SizedBox(height: 5),
                        CustomText(content: 'Facebook', color: Colors.grey, fontsize: 15),
                        CustomText(content: 'LinkedIn', color: Colors.grey, fontsize: 15),
                        CustomText(content: 'Instagram', color: Colors.grey, fontsize: 15),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(content: 'COMPANY ADDRESS', is_bold: true, fontsize: 20),
                        SizedBox(height: 5),
                        CustomText(content: 'socialswirl.pk@gmail.com', color: Colors.grey, fontsize: 15),
                        CustomText(content: '+92 328 5981933', color: Colors.grey, fontsize: 15),
                        CustomText(
                          content: 'Office no 522\nFloor no: 5th\nAl Hafeez Shopping Mall\nGulberg 3\nLahore',
                          color: Colors.grey,
                          fontsize: 15,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Center(child: CustomText(content: '© 2023. All rights Reserved.'))
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
