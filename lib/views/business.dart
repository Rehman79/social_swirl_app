import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return CustomScaffold(
      appbartitle: 'Business Outsourcing',
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02),
              Container(
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        content: 'Danial Khan',
                        is_bold: true,
                        is_gilroy: false,
                        is_white: true,
                        fontsize: screenWidth * 0.09,
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      CustomText(
                        content: 'CEO',
                        is_white: true,
                        is_bold: true,
                        fontsize: screenWidth * 0.06,
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      CustomText(
                        content: 'Social Swirl',
                        is_bold: true,
                        is_white: true,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              // Announcement Text
              CustomText(
                content: 'Exciting Announcement - Introducing Our Business Outsourcing Project',
                is_bold: true,
                fontsize: screenWidth * 0.05,
                textAlign: TextAlign.start,
              ),

              SizedBox(height: screenHeight * 0.02),

              CustomText(
                content: "We are delighted to announce an exciting new development at Social Swirl: the launch of our highly anticipated Business Outsourcing Project. At Social Swirl, we have always been committed to delivering exceptional services and innovative solutions to meet the evolving needs of our clients. With our new Business Outsourcing Project, we are taking our commitment to the next level by offering comprehensive outsourcing solutions tailored to enhance the efficiency and productivity of your business operations.",
                fontsize: screenWidth * 0.04,
                textAlign: TextAlign.start,
              ),

              SizedBox(height: screenHeight * 0.02),
              CustomText(
                content: 'Increased focus on core competencies:',
                is_bold: true,
                fontsize: screenWidth * 0.05,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content: "By outsourcing non-core functions to our expert team, you can redirect your valuable time and resources towards your primary business goals.",
                fontsize: screenWidth * 0.04,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: screenHeight * 0.02),
              CustomText(
                content: 'Cost savings and improved profitability:',
                is_bold: true,
                fontsize: screenWidth * 0.05,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content: "Our efficient outsourcing services enable you to reduce overhead costs, streamline processes, and maximize your company's profitability.",
                fontsize: screenWidth * 0.04,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: screenHeight * 0.02),
              CustomText(
                content: 'Access to specialized expertise:',
                is_bold: true,
                fontsize: screenWidth * 0.05,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content: "Benefit from the skills and knowledge of our experienced professionals who excel in various areas, including customer support, IT, finance, and more.",
                fontsize: screenWidth * 0.04,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: screenHeight * 0.02),
              CustomText(
                content: 'Scalability and flexibility:',
                is_bold: true,
                fontsize: screenWidth * 0.05,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content: "Our outsourcing solutions are designed to adapt to your business needs, allowing you to scale operations seamlessly and respond quickly to market demands.Whether you are a small startup or an established enterprise, our Business Outsourcing Project can provide you with the competitive edge you need in today's dynamic business landscape. We invite you to explore the possibilities and discuss how our tailored solutions can benefit your organization.\nContact us today to schedule a consultation or visit our website for more details. We would like to express our sincere gratitude for your continued trust and support. We are truly excited about this new chapter for Social Swirl and the opportunities it brings for both our company and our valued clients. Stay tuned for more updates and be a part of our journey towards greater success!\nDanial Khan\nCEO\nwww.socialswirl.org",
                fontsize: screenWidth * 0.04,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: screenHeight * 0.02),

              // Centered Image
              Center(
                child: SizedBox(
                  height: screenHeight * 0.3,
                  child: Image.asset(
                    'lib/assets/sa.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              Center(
                child: CustomText(
                  content: 'COMING SOON',
                  is_bold: true,
                  fontsize: screenWidth * 0.05,
                ),
              ),

              SizedBox(height: screenHeight * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
