import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_swirl_app/utils/custom_scaffold.dart';
import 'package:social_swirl_app/utils/custom_text.dart';

class ELearning extends StatelessWidget {
  const ELearning({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      is_scroll: false,
        appbartitle: 'Learning',
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                content: 'Coming\nSoon',
                is_gilroy: false,
                color: Colors.blue,
                fontsize: 60,
                is_bold: true,
              )
            ],
          ),
        )
    );
  }
}
