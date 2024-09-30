import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'custom_text.dart';

class CompList extends StatefulWidget {
  const CompList({super.key});

  @override
  _CompListState createState() => _CompListState();
}

class _CompListState extends State<CompList> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 4) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          child: PageView(
            controller: _pageController,
            children: [
              _buildCard('Elisha', 'lib/assets/elisha.jfif',
                  'Social Swirl transformed our design concepts into beutifully crafted, responsive websites with exceptional skill, Great Experience.'),
              _buildCard('Careem', 'lib/assets/Kareem.jfif',
                  "Social Swirl's backend team excels in Python and Django, delivering robust with infrastructure with quality and timeliness, a reliable choice!"),
              _buildCard('DK Group', 'lib/assets/K.jfif',
                  "Social Swirl's design team exceeded expectations, bringing our brand to life with innovative designs, Thrilled with their work!"),
              _buildCard('Mat Communications Services', 'lib/assets/comm.jfif',
                  'Social Swirl\'s top-tier SEO services boosted our online presence with precise keywords and detailed analytics. Highly satisfied!'),
              _buildCard('Loja', 'lib/assets/m.jfif',
                  "Social Swirl's social media team's strategic content and efficient management led to a strong online presence, boosting brand awareness and conversions. Impressive efforts!"),
            ],
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        SmoothPageIndicator(
          controller: _pageController,
          count: 5,
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.blue,
            dotColor: Colors.grey,
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,
          ),
        ),
      ],
    );
  }

  Widget _buildCard(String company, String imagePath, String testimonial) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 20),
          CustomText(
            content: testimonial,
            fontsize: 16,
            is_gilroy: false,
            ),
          const SizedBox(height: 10),
          CustomText(
            content: company,
            fontsize: 18,
            color: Colors.blue,
            is_bold: true,
            ),
        ],
      ),
    );
  }
}
