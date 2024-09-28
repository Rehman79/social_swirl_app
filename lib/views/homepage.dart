
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/cont_stack_services.dart';
import 'package:social_swirl_app/utils/custom_button.dart';
import 'package:social_swirl_app/utils/custom_text.dart';
import 'package:social_swirl_app/utils/learn_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Image.asset(
                'lib/assets/sa.png',
                scale: 3,
              ),
              Expanded(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      title: const Text("Services"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/services');
                      },
                    ),
                    ListTile(
                      title: const Text("Remote Jobs"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/remote_jobs');
                      },
                    ),
                    ListTile(
                      title: const Text("Business"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/business');
                      },
                    ),
                    ListTile(
                      title: const Text("E-Learning"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/e_learning');
                      },
                    ),
                    ListTile(
                      title: const Text("About Us"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/about');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Color(0xFF99D2ED),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Column(
              children: [
                CustomText(
                  content: 'SOCIAL SWIRL',
                  is_bold: true,
                  fontsize: 40,
                  color: Colors.blue,
                  is_gilroy: false,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomText(
                    content: 'Explore the world of web development with Social Swirl. Join our user-friendly courses led by industry experts, offering hands-on experiences and a clear path to mastering coding. Join us to unlock your coding skills and confidently shape your future success.',
                    fontsize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  content: 'Services',
                  onTap: () => Navigator.pushNamed(context, '/services'),
                ),
                const SizedBox(height: 30),
                CustomText(
                  content: 'Welcome To Social Swirl',
                  is_bold: true,
                  fontsize: 30,
                ),
                const SizedBox(height: 20),
                CustomText(
                  content: 'Best Software House Of Pakistan',
                  color: Colors.blue,
                  is_bold: true,
                  fontsize: 18,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomText(
                    content:
                    "The company's mission is to provide high-quality software solutions and media that help businesses and individuals optimise their online presence and achieve their goals. With a team of experienced professionals and a commitment to excellence, Social Swirl is dedicated to providing personalised, reliable, and affordable services to its clients. AIMS Our mission is to provide high-quality software solutions and media services that help businesses and individuals optimise their online presence and achieve their goals.",
                    fontsize: 15,
                  ),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  content: 'Courses',
                  onTap: () => Navigator.pushNamed(context, '/courses'),
                ),
                const SizedBox(height: 30),
                 CustomText(
                  content: 'Our Services',
                  is_bold: true,
                ),
                const ContStackServices(),
                CustomText(content: 'E-Learning',is_bold: true,is_gilroy: false,fontsize: 25,),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomText(content: 'Take Classes From industry experts in purpose built campuses. Ideoversity is a leading Training Institute in Pakistan.',fontsize: 15,is_gilroy: false,),
                ),
                SizedBox(height: 20,),
                CustomButton(content: 'Enroll Now', onTap:(){}),
                SizedBox(height: 20,),
                LearnCard(icon: '', heading: 'Certification', descr: "State of Art Learning Experience with \n certificate from renown organization"),
                SizedBox(height: 15,),
                LearnCard(icon: '', heading: 'Classes', descr: "World class Instructors guiding everyone \n with practical implementation"),
                SizedBox(height: 15,),
                LearnCard(icon: '', heading: 'Private Groups', descr: "Lifetime access to groups that helps \n you find the right career & opportunity"),
                SizedBox(height: 15,),
                LearnCard(icon: 'lib/assets/briefcase.png', heading: 'Internship', descr: "This is designed to enhance interns skills \n that they need to succeed in their careers"),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
