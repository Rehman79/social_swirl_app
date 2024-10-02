import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class CustomScaffold extends StatelessWidget {
  final String appbartitle;
  final Widget child;
  final bool is_scroll;

  const CustomScaffold({Key? key, required this.appbartitle, required this.child, this.is_scroll=true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbartitle),
      ),
      drawer: const CustomDrawer(),
      body: is_scroll?SingleChildScrollView(child: Center(
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
            child: child,
          ),
        ),):Center(
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
          child: child,
        ),
      ),
    );
  }
}