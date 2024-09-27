import 'package:flutter/material.dart';
import 'package:social_swirl_app/views/about_us.dart';
import 'package:social_swirl_app/views/business.dart';
import 'package:social_swirl_app/views/e_learning.dart';
import 'package:social_swirl_app/views/homepage.dart';
import 'package:social_swirl_app/views/remote_jobs.dart';
import 'package:social_swirl_app/views/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      '/homepage':(context)=>Homepage(),
      '/services':(context)=>Services(),
      '/remote_jobs':(context)=>RemoteJobs(),
      '/business':(context)=>Business(),
      '/e_learning':(context)=>ELearning(),
      '/about':(context)=>AboutUs(),
    },
    initialRoute: '/homepage',
  ));
}