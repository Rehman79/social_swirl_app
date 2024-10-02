import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/career_card.dart';
import 'package:social_swirl_app/utils/custom_button.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class RemoteJobs extends StatelessWidget {
  const RemoteJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(appbartitle: 'Remote Jobs', child: Column(
      children: [
        SizedBox(height: 10,),
        CustomText(content: 'Over 50+ employees working',color: Colors.blue,is_bold: true,fontsize: 17,),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomText(content: 'Work With us Remotely',is_bold: true,is_gilroy: false,fontsize: 35,),
        ),
        SizedBox(height: 10,),
        CustomText(content: 'Work remotely with us and discover many options like Frontend, Backend, SEO, Human Resource, Graphic Designing and Social Media Marketing. Join us to unleash your potential and make a difference.',fontsize: 16,),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(content: 'Remote Job', onTap: (){}),
            SizedBox(width: 10,),
            CustomButton(content: 'Remote Internship', onTap: (){}),
          ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            child: Image.asset(
              'lib/assets/events.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10,),
        CustomText(content: 'Career',is_gilroy: false,is_bold: true,fontsize: 35,),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomText(content: 'At Social Swirl, we believe in nurturing talent and fostering innovation. Join our dynamic team and be a part of a collaborative environment where your \n skills are valued, Explore exciting opportunities and make a significant impact in the world of digital solutions.',fontsize: 17,),
        ),
        SizedBox(height: 10,),
        CareerCard(imagePath: 'lib/assets/frontend.jpg', title: 'Frontend Development', location: 'Lahore', description: 'Create a responsive and interactive web designs.', recruitmentInfo: 'This job represented by DK Recruitment'),
        SizedBox(height: 10,),
        CareerCard(imagePath: 'lib/assets/backend.jpg', title: 'Backend Development', location: 'Lahore', description: 'Build and maintain server-side applications', recruitmentInfo: 'This job represented by DK Recruitment'),
        SizedBox(height: 10,),
        CareerCard(imagePath: 'lib/assets/fullstackup.jpg', title: 'Full Stack Developer', location: 'Lahore', description: 'Develop and manage both front and back-end we solutions.', recruitmentInfo: 'This job represented by DK Recruitment'),
        SizedBox(height: 10,),
        CareerCard(imagePath: 'lib/assets/graphic.jpg', title: 'Graphic Designer', location: 'Lahore', description: 'Design visually compelling graphics and layouts.', recruitmentInfo: 'This job represented by DK Recruitment'),
        SizedBox(height: 10,),
        CareerCard(imagePath: 'lib/assets/seoopt.jpg', title: 'SEO Expert', location: 'Lahore', description: 'Optmize websites to improve search engine rankings.', recruitmentInfo: 'This job represented by DK Recruitment'),
        SizedBox(height: 10,),
        CareerCard(imagePath: 'lib/assets/ssm.jpg', title: 'Social Media Marketer', location: 'Lahore', description: 'Manage and strategize social media and compaigns.', recruitmentInfo: 'This job represented by DK Recruitment'),
      ],
    ));
  }
}
