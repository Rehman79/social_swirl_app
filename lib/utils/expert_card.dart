import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpertCard extends StatelessWidget {
  final String image;
  final String name;
  final String role;
  ExpertCard({super.key, required this.image, required this.name, required this.role});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          CircleAvatar(
            child: Image.asset(image),
          )
        ],
      ),
    );
  }

}
