import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListTile _buildListTile(BuildContext context, String title, String route) {
      return ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, route);
        },
      );
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 600;
    final double imageScale = isLargeScreen ? 2.5 : 3;

    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: isLargeScreen ? 40.0 : 20.0),
        child: Column(
          children: [
            Image.asset(
              'lib/assets/sa.png',
              scale: imageScale,
            ),
            Expanded(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildListTile(context, "Home", '/homepage'),
                  _buildListTile(context, "Services", '/services'),
                  _buildListTile(context, "Remote Jobs", '/remote_jobs'),
                  _buildListTile(context, "Business Outsourcing", '/business'),
                  _buildListTile(context, "E-Learning", '/e_learning'),
                  _buildListTile(context, "About Us", '/about'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
