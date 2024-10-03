import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/comp_list.dart';
import 'package:social_swirl_app/utils/cont_stack_expert.dart';
import 'package:social_swirl_app/utils/cont_stack_services.dart';
import 'package:social_swirl_app/utils/custom_button.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/custom_text.dart';
import 'package:social_swirl_app/utils/getstarted_cont.dart';
import 'package:social_swirl_app/utils/learn_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return CustomScaffold(
      appbartitle: 'Homepage',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            CustomText(
              content: 'SOCIAL SWIRL',
              is_bold: true,
              fontsize: isSmallScreen ? 35 : 45,
              color: Colors.blue,
              is_gilroy: false,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomText(
                content: 'Explore the world of web development with Social Swirl. Join our user-friendly courses led by industry experts, offering hands-on experiences and a clear path to mastering coding. Join us to unlock your coding skills and confidently shape your future success.',
                fontsize: isSmallScreen ? 17 : 25,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: CustomButton(
                content: 'Services',
                onTap: () => Navigator.pushNamed(context, '/services'),
              ),
            ),
            const SizedBox(height: 30),
            CustomText(
              content: 'Welcome To Social Swirl',
              is_bold: true,
              fontsize: isSmallScreen ? 26 : 35,
            ),
            const SizedBox(height: 20),
            CustomText(
              content: 'Best Software House Of Pakistan',
              color: Colors.blue,
              is_bold: true,
              fontsize: isSmallScreen ? 17 : 20,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomText(
                content:
                "The company's mission is to provide high-quality software solutions and media that help businesses and individuals optimise their online presence and achieve their goals. With a team of experienced professionals and a commitment to excellence, Social Swirl is dedicated to providing personalised, reliable, and affordable services to its clients.",
                fontsize: isSmallScreen ? 14 : 15,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: CustomButton(
                content: 'Courses',
                onTap: () => Navigator.pushNamed(context, '/e_learning'),
              ),
            ),
            const SizedBox(height: 30),
            CustomText(
              content: 'Our Services',
              is_bold: true,
              fontsize: isSmallScreen ? 24 : 30,
            ),
            const ContStackServices(),
            CustomText(
              content: 'E-Learning',
              is_bold: true,
              is_gilroy: false,
              fontsize: isSmallScreen ? 35 : 45,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomText(
                content:
                'Take Classes From industry experts in purpose-built campuses. Ideoversity is a leading Training Institute in Pakistan.',
                fontsize: isSmallScreen ? 16 : 20,
                is_gilroy: false,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: CustomButton(
                content: 'Enroll Now',
                onTap: () => Navigator.pushNamed(context, '/e_learning'),
              ),
            ),
            const SizedBox(height: 20),
            LearnCard(
              icon: 'lib/assets/certificate.png',
              heading: 'Certification',
              descr: 'State of Art Learning Experience with \n certificate from renowned organization',
            ),
            const SizedBox(height: 15),
            LearnCard(
              icon: 'lib/assets/mentoring.png',
              heading: 'Classes',
              descr: 'World-class instructors guiding everyone \n with practical implementation',
            ),
            const SizedBox(height: 15),
            LearnCard(
              icon: 'lib/assets/video-conference.png',
              heading: 'Private Groups',
              descr: 'Lifetime access to groups that helps \n you find the right career & opportunity',
            ),
            const SizedBox(height: 15),
            LearnCard(
              icon: 'lib/assets/internship.png',
              heading: 'Internship',
              descr: 'This is designed to enhance interns’ skills \n that they need to succeed in their careers',
            ),
            const SizedBox(height: 20),
            CustomText(
              content: 'Our Expert',
              is_bold: true,
              fontsize: isSmallScreen ? 25 : 35,
            ),
            const ContStackExpert(),
            const SizedBox(height: 20),
            CustomText(
              content: 'Over 50+ employees working',
              color: Colors.blue,
              is_bold: true,
            ),
            CustomText(
              content: 'Remote Careers',
              is_gilroy: false,
              is_bold: true,
              fontsize: isSmallScreen ? 30 : 35,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomText(
                content:
                "Discover endless opportunities with our curated list of remote jobs. Whether you're seeking flexibility, a better work-life balance, or exploring new career paths, find your dream job from the comfort of your home.",
                fontsize: isSmallScreen ? 15 : 17,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: CustomButton(
                content: 'Apply Now',
                onTap: () => Navigator.pushNamed(context, '/remote_jobs'),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'lib/assets/Home_Remote.png',
              fit: BoxFit.cover,
              scale: isSmallScreen ? 2.5 : 2,
            ),
            const SizedBox(height: 20),
            CustomText(
              content: 'What Companies Say \n About Us',
              is_bold: true,
              fontsize: isSmallScreen ? 20 : 25,
            ),
            const SizedBox(height: 20),
            const CompList(),
            const SizedBox(height: 20),
            const GetstartedCont(),
          ],
        ),
      ),
    );
  }
}
