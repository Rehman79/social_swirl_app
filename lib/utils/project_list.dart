import 'dart:async';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class ProjectList extends StatefulWidget {
  final List<String> imagePaths;
  final List<String> comp_name;
  final List<String> descr;

  const ProjectList({Key? key, required this.imagePaths, required this.comp_name, required this.descr}) : super(key: key);

  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < widget.imagePaths.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 800),
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
    return PageView.builder(
      controller: _pageController,
      itemCount: widget.imagePaths.length,
      onPageChanged: (int page) {
        setState(() {
          _currentPage = page;
        });
      },
      itemBuilder: (context, index) {
        return AnimatedOpacity(
          opacity: _currentPage == index ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 800),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.imagePaths[index])),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  CustomText(
                    content: widget.comp_name[index],
                    is_bold: true,
                    is_white: true,
                    is_gilroy: false,
                  ),
                  const SizedBox(height: 10),
                  CustomText(content: widget.descr[index]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
