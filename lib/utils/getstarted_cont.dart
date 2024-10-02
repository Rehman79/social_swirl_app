import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text.dart';

class GetstartedCont extends StatelessWidget {
  const GetstartedCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          CustomText(content: 'Start a Project with us \n Today',is_white: true,is_bold: true,fontsize: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomText(content: 'Call us now to schedule as online appointment and get your project successfully completed',is_white: true,is_gilroy: false,fontsize: 17,),
          ),
          SizedBox(height: 20,),
          CustomButton(content: 'Get Started', onTap: (){}),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
