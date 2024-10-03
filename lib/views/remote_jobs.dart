import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/career_card.dart';
import 'package:social_swirl_app/utils/cont_stack_expert.dart';
import 'package:social_swirl_app/utils/custom_button.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class RemoteJobs extends StatelessWidget {
  const RemoteJobs({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return CustomScaffold(
      appbartitle: 'Remote Jobs',
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            CustomText(
              content: 'Over 50+ employees working',
              color: Colors.blue,
              is_bold: true,
              fontsize: 17,
            ),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isSmallScreen ? 10.0 : 20.0,
              ),
              child: CustomText(
                content: 'Work With us Remotely',
                is_bold: true,
                is_gilroy: false,
                fontsize: isSmallScreen ? 28 : 35,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isSmallScreen ? 10.0 : 20.0,
              ),
              child: CustomText(
                content:
                'Work remotely with us and discover many options like Frontend, Backend, SEO, Human Resource, Graphic Designing and Social Media Marketing. Join us to unleash your potential and make a difference.',
                fontsize: isSmallScreen ? 17 : 20,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10.0,
              alignment: WrapAlignment.center,
              children: [
                CustomButton(
                  content: 'Remote Job',
                  onTap: _launchURL,
                ),
                CustomButton(
                  content: 'Remote Internship',
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isSmallScreen ? 10.0 : 20.0,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10)),
                child: Image.asset(
                  'lib/assets/events.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: isSmallScreen ? 190 : 340,
                ),
              ),
            ),
            const SizedBox(height: 10),
            CustomText(
              content: 'Career',
              is_gilroy: false,
              is_bold: true,
              fontsize: isSmallScreen ? 28 : 35,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 10.0 : 20.0),
              child: CustomText(
                content:
                'At Social Swirl, we believe in nurturing talent and fostering innovation. Join our dynamic team and be a part of a collaborative environment where your skills are valued. Explore exciting opportunities and make a significant impact in the world of digital solutions.',
                fontsize: isSmallScreen ? 17 : 20,
              ),
            ),
            const SizedBox(height: 10),
            const CareerCard(
              imagePath: 'lib/assets/frontend.jpg',
              title: 'Frontend Development',
              location: 'Lahore',
              description: 'Create a responsive and interactive web designs.',
              recruitmentInfo: 'This job represented by DK Recruitment',
            ),
            const SizedBox(height: 10),
            const CareerCard(
              imagePath: 'lib/assets/backend.jpg',
              title: 'Backend Development',
              location: 'Lahore',
              description: 'Build and maintain server-side applications',
              recruitmentInfo: 'This job represented by DK Recruitment',
            ),
            const SizedBox(height: 10),
            const CareerCard(
              imagePath: 'lib/assets/fullstackup.jpg',
              title: 'Full Stack Developer',
              location: 'Lahore',
              description: 'Develop and manage both front and back-end web solutions.',
              recruitmentInfo: 'This job represented by DK Recruitment',
            ),
            const SizedBox(height: 10),
            const CareerCard(
              imagePath: 'lib/assets/graphic.jpg',
              title: 'Graphic Designer',
              location: 'Lahore',
              description: 'Design visually compelling graphics and layouts.',
              recruitmentInfo: 'This job represented by DK Recruitment',
            ),
            const SizedBox(height: 10),
            const CareerCard(
              imagePath: 'lib/assets/seoopt.jpg',
              title: 'SEO Expert',
              location: 'Lahore',
              description: 'Optimize websites to improve search engine rankings.',
              recruitmentInfo: 'This job represented by DK Recruitment',
            ),
            const SizedBox(height: 10),
            const CareerCard(
              imagePath: 'lib/assets/ssm.jpg',
              title: 'Social Media Marketer',
              location: 'Lahore',
              description: 'Manage and strategize social media and campaigns.',
              recruitmentInfo: 'This job represented by DK Recruitment',
            ),
            const SizedBox(height: 10),
            CustomButton(
              content: 'Read More',
              onTap: () => Navigator.pushNamed(context, '/position'),
            ),
            const SizedBox(height: 40),
            CustomText(
              content: 'Current Employees',
              is_bold: true,
              is_gilroy: false,
              fontsize: isSmallScreen ? 25 : 35,
            ),
            ContStackExpert(),
            const SizedBox(height: 10),
            CustomText(
              content: 'Our Certification',
              is_gilroy: false,
              is_bold: true,
              fontsize: isSmallScreen ? 25 : 35,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 10.0 : 20.0),
              child: CustomText(
                content:
                'At Social Swirl, our internship program has been providing valuable industry experience since 2021. Our certification is recognized for its comprehensive training and practical exposure to real-world projects. Interns gain hands-on experience with cutting-edge technologies, making our certificate a testament to their skills and dedication.',
                fontsize: isSmallScreen ? 17 : 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: isSmallScreen ? 230 : 380,
                child: Image.asset('lib/assets/internship_Letter.png', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 10),
            CustomText(
              content: 'Remote Internship',
              is_gilroy: false,
              is_bold: true,
              fontsize: isSmallScreen ? 25 : 35,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 10.0 : 20.0),
              child: CustomText(
                content:
                "Explore Social Swirl's internship program for a chance to gain hands-on experience, develop your skills in a dynamic environment, and work on real-world projects. Enhance your career prospects with our comprehensive and supportive training.",
                fontsize: isSmallScreen ? 17 : 20,
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(content: 'Get Started', onTap: () {}),
            SizedBox(
              height: isSmallScreen ? 230 : 380,
              child: Image.asset('lib/assets/Remote.png', fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL() async {
    const String link =
        'https://docs.google.com/forms/d/e/1FAIpQLSctg3RPbBBnnolRU9LV47onZvb5V03O_Kmo8qzqqpXlOVetow/viewform';
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {
      throw 'Could not launch $link';
    }
  }
}
