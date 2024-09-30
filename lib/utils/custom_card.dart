import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_button.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class CustomCard extends StatelessWidget {
  String image;
  String title;
  String sub_title;


  CustomCard({required this.image, required this.title, required this.sub_title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image,scale: 5,),
              const SizedBox(height: 16),

              CustomText(content: title,is_bold: true,),

              const SizedBox(height: 10),

              CustomText(content: sub_title,fontsize: 16,),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(content: 'Get a Quote', onTap: (){}),
                  CustomButton(content: 'Read More', onTap: (){}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
