import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appbartitle: 'Business Outsourcing',
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        content: 'Danial Khan',
                        is_bold: true,
                        is_gilroy: false,
                        is_white: true,
                        fontsize: 35,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        content: 'CEO',
                        is_white: true,
                        is_bold: true,
                        fontsize: 25,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        content: 'Social Swirl',
                        is_bold: true,
                        is_white: true,
                      ),
                    ],
                  ),
                ),
              ),
              CustomText(
                content:
                    'Exciting Announcement - Introducing Our Business outsourcing Project',
                is_bold: true,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content:
                    "We are delighted to announce an exciting new development at Social Swirl: the launch of our highly anticipated Business Outsourcing Project. At Social Swirl, we have always been committed to delivering exceptional services and innovative solutions to meet the evolving needs of our clients. With our new Business Outsourcing Project, we are taking our commitment to the next level by offering comprehensive outsourcing solutions tailored to enhance the efficiency and productivity of your business operations.",
                fontsize: 17,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content: 'Increased focus on core\ncompetencies:',
                is_bold: true,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content:
                    "By outsourcing non-core functions to our expert team, you can redirect your valuable time and resources towards your primary business goals.",
                fontsize: 17,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content: 'Cost savings and improved\nprofitability:',
                is_bold: true,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content:
                    "Our efficient outsourcing services enable you to reduce overhead costs, streamline processes, and maximize your company's profitability.",
                fontsize: 17,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content: 'Access to specialized expertise:',
                is_bold: true,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content:
                    "Benefit from the skills and knowledge of our experienced professionals who excel in various areas, including customer support, IT, finance, and more.",
                fontsize: 17,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content: 'Scalability and flexibility:',
                is_bold: true,
                textAlign: TextAlign.start,
              ),
              CustomText(
                content:
                    "Our outsourcing solutions are designed to adapt to your business needs allowing you to scale operations seamlessly and respond quickly to market demands. Whether you are a small startup or an established enterprise, our Business Outsourcing Project can provide you with the competitive edge you need in today's dynamic business landscape. We invite you to explore the possibilities and discuss how our tailored solutions can benefit your organization.\n\nContact us today to schedule a consultation or visit our website for more details. We would like to express our sincere gratitude for your continued trust and support. We are truly excited about this new chapter for Social Swirl and the opportunities it brings for both our company and our valued clients. Stay tuned for more updates and be a part of our journey towards greater success!\n....\nDanial Khan\nCEO\nwww.socialswirl.org",
                fontsize: 17,
                textAlign: TextAlign.start,
              ),
              Center(
                child: SizedBox(
                  height: 250,
                  child: Image.asset(
                    'lib/assets/sa.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: CustomText(content: 'COMING SOON',is_bold: true,)),
              SizedBox(height: 30,)
            ],
          ),
        ));
  }
}
